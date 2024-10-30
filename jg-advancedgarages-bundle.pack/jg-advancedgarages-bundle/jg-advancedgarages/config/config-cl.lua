--
-- Custom code for common events
--

---@param vehicle integer Vehicle entity
---@param vehicleDbData table Vehicle row from the database
---@param type "personal" | "job" | "gang"
RegisterNetEvent("jg-advancedgarages:client:InsertVehicle:config", function(vehicle, vehicleDbData, type)
  -- Code placed in here will be run when the player inserts their vehicle (if the vehicle is owned; and passes all the checks)
end)

---@param vehicle integer Vehicle entity
RegisterNetEvent("jg-advancedgarages:client:ImpoundVehicle:config", function(vehicle)
  -- Code placed in here will be run just before the vehicle is set to impounded in the DB, and before the entity is deleted
end)

---@param vehicle integer Vehicle entity
---@param vehicleDbData table Vehicle row from the database
---@param type "personal" | "job" | "gang"
RegisterNetEvent("jg-advancedgarages:client:TakeOutVehicle:config", function(vehicle, vehicleDbData, type)
  -- Code placed in here will be run after a vehicle has been taken out of a garage
end)

---@param plate string
---@param newOwnerPlayerId integer
RegisterNetEvent("jg-advancedgarages:client:TransferVehicle:config", function(plate, newOwnerPlayerId)
  -- Code placed in here will be fired when a vehicle is transferred to another player via a public garage
end)

-- Check whether a vehicle can be transferred between players, return false to prevent
---@param fromPlayerSrc integer
---@param toPlayerSrc integer
---@param plate string
---@return boolean allowTransfer
lib.callback.register("jg-advancedgarages:client:transfer-vehicle-verification", function(fromPlayerSrc, toPlayerSrc, plate)
  return true
end)

-- Check whether a vehicle can be transferred between garages, return false to prevent
---@param fromGarageId integer
---@param toGarageId integer
---@param plate string
---@return boolean allowTransfer
lib.callback.register("jg-advancedgarages:client:transfer-garage-verification", function(fromGarageId, toGarageId, plate)
  return true
end)