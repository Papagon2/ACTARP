Locales = Locales or {}

Locales['it'] = {
  yes = "Si",
  no = "No",
  garage = "Garage",
  jobGarage = "Garage Lavoro",
  gangGarage = "Garage Gang",
  player = "Giocatore",
  impound = "Sequestro",
  inGarage = "In Garage",
  notInGarage = "Fuori Dal Garage",
  car = "Macchina",
  air = "Aereo",
  sea = "Barche",
  fuel = "Benzina",
  engine = "Motore",
  body = "Carrozzeria",
  day = "Giorno",
  days = "Giorni",
  hour = "Ora",
  hours = "Ore",

  -- User Interface
  noVehicles = "Non Ci Sono Veicoli In Questo Garage",
  vehicles = "Veicoli",
  vehiclePlate = "Targa Veicolo",
  vehicleNotInGarage = "Veicolo Non In Garage",
  vehicleTakeOut = "Prendi Il Veicolo",
  vehicleReturnAndTakeOut = "Ritorna E Prendi Il Veicolo",
  vehicleReturnToOwnersGarage = "Ritorna Nel Garage Del Propietario",
  transferToGarageOrPlayer = "Trasferisci Al Garage O Al Giocatore",
  transferToGarage = "Trasferisci Al Garage",
  transferToPlayer = "Trasferisci Al Giocatore",
  vehicleTransfer = "Trasferisci",
  noAvailableGarages = "Nessun Garage Disponibile",
  currentGarage = "Garage Attuale",
  noPlayersOnline = "Nessun Giocatore Online",
  createPrivateGarage = "Crea Garage Privato",
  pgAlertHeadsUp = "Dritta!",
  pgAlertText = "Il Garage Verrà Creato E I Veicoli Appariranno Nella Posizione E Nella Direzione Esatte In Cui Ti Trovi Attualmente.",
  garageName = "Nome Garage",
  impoundInformation = "Informazioni Sequestro",
  impoundedBy = "Sequestrato Da",
  impoundedReason = "Motivo",
  impoundPlayerCanCollect = "Non Puoi Prelevare Il Veicolo Dal Sequestro.",
  impoundCollectionContact = "Contatta %{value} Per Prelevare Il Tuo Veicolo.",
  impoundNoVehicles = "Nessun Veicolo Sequestrato",
  impoundAvailable = "Disponibile",
  impoundRetrievableByOwner = "Ritirabile Dal Propietario",
  impoundNoReason = "Nessun Motivo Segnalato",
  impoundVehicle = "Sequestra Veicolo",
  impoundReasonField = "Motivo (Opzionale)",
  impoundTime = "Tempo Sequestro",
  impoundAvailableImmediately = "Disponibile Ora",
  impoundCost = "Costo",
  changeVehiclePlate = "Cambia Targa Veicolo",
  newPlate = "Nuova Targa",
  search = "Ricerca Per Nome O Targa",
  noPrivateGarages = "Nessun garage privato",
  editPrivateGarage = "Modifica garage privato",
  owners = "Proprietario/i",
  location = "Posizione",
  next = "Successivo",
  previous = "Precedente",
  page = "Pagina",
  of = "di",
  show = "Mostra",
  save = "Salva",
  edit = "Modifica",
  delete = "Cancellare",
  garageDeleteConfirm = "Sei sicuro di voler cancellare questo garage?",
  privGarageSearch = "Ricerca per nome",
  garageUpdatedSuccess = "Garage aggiornato con successo!",
  getCurrentCoords = "Ottenere le coordinate correnti",
  identifier = "Identificatore",
  name = "Nome",
  noPlayers = "Non sono stati aggiunti giocatori",
  addPlayer = "Aggiungi giocatore",
  loadingVehicle = "Caricamento del veicolo...",
  vehicleSetup = "Configurazione del veicolo",
  extras = "Extras",
  extra = "Extra",
  liveries = "Livree",
  livery = "Livrea",
  noLiveries = "Nessuna livrea disponibile",
  noExtras = "Nessun extra disponibile",
  none = "Nessuno",
  vehicleNeedsService = "Needs Service",
  type = "Type",

  -- Notifications
  insertVehicleTypeError = "Puoi Depositare %{value} Tipi Di Veicoli In Questo Garage",
  insertVehiclePublicError = "Non Puoi Depositare Veicoli Gang O Lavorativi In Garage Pubblici",
  vehicleParkedSuccess = "Veicolo Parcheggiato",
  vehicleNotOwnedError = "Non Sei Il Propietario Del Veicolo",
  vehicleNotOwnedByPlayerError = "Il Veicolo Non E Tuo",
  notEnoughMoneyError = "Non Hai Abbastanza Soldi In Banca",
  vehicleNotYoursError = "Il Veicolo Non Ti Appartiene",
  notJobOrGangVehicle = "Questo Non E Un %{value} Veicolo",
  invalidGangError = "Gang Non Valida",
  invalidJobError = "Lavoro Non Valido",
  notInsideVehicleError = "Non Sei In Un Veicolo",
  vehicleAddedToGangGarageSuccess = "Veicolo Aggiunto Al %{value} Garage Gang!",
  vehicleAddedToJobGarageSuccess = "Veicolo Aggiunto Al %{value} Garage Lavorativo!",
  moveCloserToVehicleError = "Devi Avvicinarti Al Veicolo",
  noVehiclesNearbyError = "Nessun Veicolo Vicino",
  commandPermissionsError = "Non Sei Autorizzato Ad Usare Questo Comando",
  actionNotAllowedError = "Non Sei Autorizzato A Fare Questo",
  garageNameExistsError = "Nome Garage Esistente",
  vehiclePlateExistsError = "Targa Veicolo Gia Esistente",
  playerNotOnlineError = "Giocatore Offline",
  vehicleTransferSuccess = "Veicolo Trasferito A %{value}",
  vehicleTransferSuccessGeneral = "Veicolo Trasferito Correttamente",
  vehicleReceived = "Hai Ricevuto Un Veicolo Con Targa %{value}",
  vehicleImpoundSuccess = "Veicolo Sequestrato Correttamente",
  vehicleImpoundRemoveSuccess = "Veicolo Rimosso Dal Sequestro",
  vehicleImpoundReturnedToOwnerSuccess = "Veicolo Restituito Nel Garage Del Propietario",
  garageCreatedSuccess = "Garage Creato Correttamente!",
  vehiclePlateUpdateSuccess = "Targa Cambiata In %{value}",
  vehicleDeletedSuccess = "Veicolo Cancellato Dal Database %{value}",
  playerIsDead = "Sei Morto! Non Puoi Farlo",

  -- Commands
  cmdSetGangVehicle = "Aggiungi Veicolo Attuale Al Garage Gang",
  cmdRemoveGangVehicle = "Ritorna Veicolo Gang Al Propietario",
  cmdSetJobVehicle = "Aggiungi Veicolo Attuale Al Garage Lavorativo",
  cmdRemoveJobVehicle = "Ritorna Veicolo Lavorativo Al Propietario",
  cmdArgGangName = "Nome Gang",
  cmdArgJobName = "Nome Lavoro",
  cmgArgMinGangRank = "Grado Minimo Gang",
  cmgArgMinJobRank = "Grado Minimo Lavoro",
  cmdArgPlayerId = "ID Giocatore Del Destinatario",
  cmdImpoundVehicle = "Sequestra Veicolo",
  cmdChangePlate = "Cambia Targa Veicolo (Solo Admin)",
  cmdDeleteVeh = "Cancella Veicolo Dal Database (Solo Admin)",
  cmdCreatePrivGarage = "Crea Un Garage Privato Per Il Giocatore",

  -- v3
  vehicleStoreError = "You cannot store this vehicle here",
  mins = "mins",
  noVehiclesAvailableToDrive = "There are no vehicles available to drive",
}