---@param vehicle integer
---@param fieldName string
function getVehicleHandlingValue(vehicle, fieldName)
  if string.sub(fieldName, 1, 3) == "vec" then -- is vec
    return GetVehicleHandlingVector(vehicle, "CHandlingData", fieldName)
  elseif string.sub(fieldName, 1, 1) == "n" then
    return GetVehicleHandlingInt(vehicle, "CHandlingData", fieldName)
  else
    return GetVehicleHandlingFloat(vehicle, "CHandlingData", fieldName)
  end
end

---@param vehicle integer
---@param fieldName string
---@param value any
function setVehicleHandlingValue(vehicle, fieldName, value)
  local prevValue = fieldName == "nInitialDriveGears" and getVehicleHandlingValue(vehicle, fieldName) or nil
  
  if string.sub(fieldName, 1, 3) == "vec" then -- is vec
    SetVehicleHandlingVector(vehicle, "CHandlingData", fieldName, vector3(value.x, value.y, value.z))
  elseif string.sub(fieldName, 1, 1) == "n" then -- is int
    SetVehicleHandlingInt(vehicle, "CHandlingData", fieldName, value --[[@as integer]])
  else
    SetVehicleHandlingFloat(vehicle, "CHandlingData", fieldName, value + 0.0 --[[@as number]])
  end

  if fieldName == "nInitialDriveGears" and prevValue ~= value then
    SetVehicleHighGear(vehicle, value)
    Citizen.InvokeNative(`SET_VEHICLE_CURRENT_GEAR` & 0xFFFFFFFF, vehicle, value)
    Citizen.InvokeNative(`SET_VEHICLE_NEXT_GEAR` & 0xFFFFFFFF, vehicle, value)
    
    SetTimeout(11, function()
      Citizen.InvokeNative(`SET_VEHICLE_CURRENT_GEAR` & 0xFFFFFFFF, vehicle, 1)
    end)
  end
end

---Get vehicle base handling
---@param vehicle integer
function getBaseVehicleHandling(vehicle)
  return {
    audioNameHash = GetEntityArchetypeName(vehicle),

    fInitialDriveForce = getVehicleHandlingValue(vehicle, "fInitialDriveForce"),
    fDriveInertia = getVehicleHandlingValue(vehicle, "fDriveInertia"),
    fInitialDriveMaxFlatVel = getVehicleHandlingValue(vehicle, "fInitialDriveMaxFlatVel"),
    fClutchChangeRateScaleUpShift = getVehicleHandlingValue(vehicle, "fClutchChangeRateScaleUpShift"),
    fClutchChangeRateScaleDownShift = getVehicleHandlingValue(vehicle, "fClutchChangeRateScaleDownShift"),
    fBrakeForce = getVehicleHandlingValue(vehicle, "fBrakeForce"),
    fBrakeBiasFront = getVehicleHandlingValue(vehicle, "fBrakeBiasFront"),
    fDriveBiasFront = getVehicleHandlingValue(vehicle, "fDriveBiasFront"),
    fTractionCurveMin = getVehicleHandlingValue(vehicle, "fTractionCurveMin"),
    fTractionCurveMax = getVehicleHandlingValue(vehicle, "fTractionCurveMax"),
    fTractionLossMult = getVehicleHandlingValue(vehicle, "fTractionLossMult"),
    fCamberStiffnesss = getVehicleHandlingValue(vehicle, "fCamberStiffnesss"),
    fInitialDragCoeff = getVehicleHandlingValue(vehicle, "fInitialDragCoeff"),
    fSteeringLock = getVehicleHandlingValue(vehicle, "fSteeringLock"),
    fTractionCurveLateral = getVehicleHandlingValue(vehicle, "fTractionCurveLateral"),
    fTractionSpringDeltaMax = getVehicleHandlingValue(vehicle, "fTractionSpringDeltaMax"),
    fTractionBiasFront = getVehicleHandlingValue(vehicle, "fTractionBiasFront"),
    fLowSpeedTractionLossMult = getVehicleHandlingValue(vehicle, "fLowSpeedTractionLossMult"),
    fMass = getVehicleHandlingValue(vehicle, "fMass"),
    -- fDownForceModifier = getVehicleHandlingValue(vehicle, "fDownForceModifier"), --gives an error
    nInitialDriveGears = getVehicleHandlingValue(vehicle, "nInitialDriveGears"),
    fSuspensionForce = getVehicleHandlingValue(vehicle, "fSuspensionForce"),
    fSuspensionCompDamp = getVehicleHandlingValue(vehicle, "fSuspensionCompDamp"),
    fSuspensionReboundDamp = getVehicleHandlingValue(vehicle, "fSuspensionReboundDamp"),
    fSuspensionUpperLimit = getVehicleHandlingValue(vehicle, "fSuspensionUpperLimit"),
    fSuspensionLowerLimit = getVehicleHandlingValue(vehicle, "fSuspensionLowerLimit"),
    fSuspensionRaise = getVehicleHandlingValue(vehicle, "fSuspensionRaise"),
    fSuspensionBiasFront = getVehicleHandlingValue(vehicle, "fSuspensionBiasFront"),
    fAntiRollBarForce = getVehicleHandlingValue(vehicle, "fAntiRollBarForce"),
    fAntiRollBarBiasFront = getVehicleHandlingValue(vehicle, "fAntiRollBarBiasFront"),
    fRollCentreHeightFront = getVehicleHandlingValue(vehicle, "fRollCentreHeightFront"),
    fRollCentreHeightRear = getVehicleHandlingValue(vehicle, "fRollCentreHeightRear"),
  }
end

---Create new handling table from a tuning config
---@param handling table
---@param tuningConfig { engineSwaps: string, drivetrains: string, turbocharging: string, tyres: string, brakes: string }
---@return table newHandling
local function calculateTuningHandling(handling, tuningConfig)
  local tuningsToApply = {}

  for tune, option in pairs(tuningConfig) do
    if option then
      local tuneConfig = Config.Tuning[tune]?[option]

      if tuneConfig then
        tuningsToApply[#tuningsToApply + 1] = {
          order = tuneConfig.handlingApplyOrder or 1,
          config = tuneConfig
        }
      end
    end
  end

  -- Sort the tuning options by their apply order
  table.sort(tuningsToApply, function(a, b) return a.order < b.order end)

  for _, tune in ipairs(tuningsToApply) do
    local tuneConfig = tune.config
    if tuneConfig then
      if tuneConfig.audioNameHash then
        handling.audioNameHash = tuneConfig.audioNameHash
      end

      if tuneConfig.handling then
        for key, value in pairs(tuneConfig.handling) do
          if tuneConfig.handlingOverwritesValues then
            handling[key] = value
          else
            handling[key] = (handling[key] or 0) + value
          end
        end
      end
    end
  end

  return handling
end

---Calculate the new handling value based on base handling, the min handling value & the current damage
---@param val number
---@param minVal number minimum handling value that wear can allow
---@param damage number between 0 and 1
---@return number
local function calcServicingHandlingValue(val, minVal, damage)
  return minVal + ((val - minVal) * damage)
end

---Calculate new vehicle handling values based on current servicing health
---@param vehicle integer
---@param handling table
---@param servicingHealth table
---@return table newHandling
local function calculateServicingHandling(vehicle, handling, servicingHealth)
  local hash = GetEntityModel(vehicle)
  local isSupportedVeh = IsThisModelACar(hash) or IsThisModelABike(hash) or IsThisModelAQuadbike(hash)
  if not isSupportedVeh then return handling end

  -- You can add new electric vehicles in Config.ElectricVehicles
  local isElectric = isVehicleElectric(GetEntityArchetypeName(vehicle))

  -- Suspension
  local suspensionDamage = round(servicingHealth.suspension / 100, 3)
  handling.fCamberStiffnesss = calcServicingHandlingValue(handling.fCamberStiffnesss, 0.0, suspensionDamage)
  handling.fSuspensionForce = calcServicingHandlingValue(handling.fSuspensionForce, 0.0, suspensionDamage)
  handling.fAntiRollBarForce = calcServicingHandlingValue(handling.fAntiRollBarForce, 0.0, suspensionDamage)
  SetVehicleAudioBodyDamageFactor(vehicle, 1.0 - suspensionDamage)

  -- Tyres
  local tyresDamage = round(servicingHealth.tyres / 100, 3)
  handling.fTractionCurveMin = calcServicingHandlingValue(handling.fTractionCurveMin, 0.5, tyresDamage)
  handling.fTractionCurveMax = calcServicingHandlingValue(handling.fTractionCurveMax, 0.5, tyresDamage)

  -- Brake Pads
  local brakesDamage = round(servicingHealth.brakePads / 100, 3)
  handling.fBrakeForce = calcServicingHandlingValue(handling.fBrakeForce, 0.01, brakesDamage)

  -- Clutch
  local clutchDamage = round(servicingHealth.clutch / 100, 3)
  handling.fClutchChangeRateScaleUpShift = calcServicingHandlingValue(handling.fClutchChangeRateScaleUpShift, 0.0, clutchDamage)
  handling.fClutchChangeRateScaleDownShift = calcServicingHandlingValue(handling.fClutchChangeRateScaleDownShift, 0.0, clutchDamage)

  -- Spark Plugs, EV Battery (Affects Acceleration)
  local accelerationDamage = round((isElectric and (servicingHealth.evBattery or 1) or servicingHealth.sparkPlugs) / 100, 3)
  handling.fDriveInertia = calcServicingHandlingValue(handling.fDriveInertia, 0.01, accelerationDamage)
  
  -- Air Filter, Engine Oil, EV Coolant, EV Motor (Affects Acceleration & Top Speed)
  local engineDamage = round((isElectric and (math.min(servicingHealth.evCoolant, servicingHealth.evMotor) or 1) or math.min(servicingHealth.airFilter, servicingHealth.engineOil)) / 100, 3)
  handling.fInitialDriveForce = calcServicingHandlingValue(handling.fInitialDriveForce, 0.1, engineDamage)
  SetVehicleAudioEngineDamageFactor(vehicle, 1.0 - engineDamage)

  return handling
end

---After making any handling changes, we have to reapply GTA performance mods,
---otherwise vehicles become like 15-20% slower due to ModifyVehicleTopSpeed
---@param vehicle integer
---@param performanceMods table
local function reapplyGTAPerformanceMods(vehicle, performanceMods)
  if not performanceMods or type(performanceMods) ~= "table" then return end

  local modEngine, modBrakes, modTransmission, modTurbo = performanceMods.modEngine, performanceMods.modBrakes, performanceMods.modTransmission, performanceMods.modTurbo

  SetVehicleModKit(vehicle, 0)
  if modEngine then SetVehicleMod(vehicle, 11, modEngine, false) end
  if modBrakes then SetVehicleMod(vehicle, 12, modBrakes, false) end
  if modTransmission then SetVehicleMod(vehicle, 13, modTransmission, false) end
  if modTurbo ~= nil then ToggleVehicleMod(vehicle, 18, modTurbo) end
end

---Set tuning handling 
---@param vehicle integer
local function applyVehicleTuningHandling(vehicle, tuningConfig)
  if not DoesEntityExist(vehicle) then return error("Vehicle does not exist") end

  local state = Entity(vehicle).state
  if not state then return end

  local baseHandling, servicingData = state.baseHandling, state.servicingData

  local handling = baseHandling
  if not handling then
    handling = getBaseVehicleHandling(vehicle)
    setVehicleStatebag(vehicle, "baseHandling", handling, false)
  end

  if tuningConfig then
    handling = calculateTuningHandling(handling, tuningConfig)
  end

  if servicingData then
    handling = calculateServicingHandling(vehicle, handling, servicingData)
  end
  
  -- Set power to wheels based on selected drivetrain bias
  local numOfWheels = GetVehicleNumberOfWheels(vehicle)
  local biasFront = handling.fDriveBiasFront

  if numOfWheels >= 4 then
    SetVehicleWheelIsPowered(vehicle, 0, biasFront > 0) -- FWD
    SetVehicleWheelIsPowered(vehicle, 1, biasFront > 0) -- FWD
    SetVehicleWheelIsPowered(vehicle, 2, biasFront < 1) -- AWD/RWD
    SetVehicleWheelIsPowered(vehicle, 3, biasFront < 1) -- AWD/RWD
    SetVehicleWheelIsPowered(vehicle, 4, biasFront < 1) -- AWD/RWD
  end

  for key, value in pairs(handling) do
    if key == "audioNameHash" then
      ForceUseAudioGameObject(vehicle, value --[[@as string]])
    else
      setVehicleHandlingValue(vehicle, key, value)

      local tsm = GetVehicleTopSpeedModifier(vehicle)
      ModifyVehicleTopSpeed(vehicle, tsm == -1.0 and 1.0 or tsm)
    end
  end

  if NetworkGetEntityOwner(vehicle) == cache.playerId then
    reapplyGTAPerformanceMods(vehicle, state.performanceMods)
    ToggleVehicleMod(vehicle, 18, tuningConfig.turbocharging == 1)
  end
end

AddStateBagChangeHandler("tuningConfig", "", function(bagName, _, value)
  local vehicle = GetEntityFromStateBagName(bagName)
  if vehicle == 0 then return end
  if not value then return end

  applyVehicleTuningHandling(vehicle, value)
end)

---Set servicing handling
---@param vehicle integer
local function applyVehicleServicingHandling(vehicle, servicingData)
  if not DoesEntityExist(vehicle) then return error("Vehicle does not exist") end

  local state = Entity(vehicle).state
  if not state then return end

  local baseHandling, tuningConfig = state.baseHandling, state.tuningConfig
  
  local handling = baseHandling
  if not handling then
    handling = getBaseVehicleHandling(vehicle)
    setVehicleStatebag(vehicle, "baseHandling", handling, false)
  end

  if tuningConfig then
    handling = calculateTuningHandling(handling, tuningConfig)
  end

  if servicingData then
    handling = calculateServicingHandling(vehicle, handling, servicingData)
  end

  for key, value in pairs(handling) do
    if key ~= "audioNameHash" then
      setVehicleHandlingValue(vehicle, key, value)

      local tsm = GetVehicleTopSpeedModifier(vehicle)
      ModifyVehicleTopSpeed(vehicle, tsm == -1.0 and 1.0 or tsm)
    end
  end

  if NetworkGetEntityOwner(vehicle) == cache.playerId then
    reapplyGTAPerformanceMods(vehicle, state.performanceMods)
  end
end

AddStateBagChangeHandler("servicingData", "", function(bagName, _, value)
  local vehicle = GetEntityFromStateBagName(bagName)
  if vehicle == 0 then return end
  if not value then return end
  
  applyVehicleServicingHandling(vehicle, value)
end)