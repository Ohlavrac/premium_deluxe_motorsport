import 'package:premium_deluxe_motorsport/data/models/vehicle_model.dart';

List<VehicleModel> vehicles = vehiclesJson.map((object) => VehicleModel.fromJson(object)).toList();

const List<Map<String, dynamic>> vehiclesJson = [
  {
    "id": 1,
    "type": "Muscle",
    "name": "Ruiner",
    "manufactor": "Imponte",
    "image": "./assets/vehicles/ruiner.png",
    "sellprice": 22000,
    "topspeed": 115,
    "seats": 2,
    "drivetrain": "RWD",
    "gears": 5,
    "transmition": "Manual",
    "storage": 600,
    "contacts": [
      {
        "name": "Oliver",
        "number": "(550) 359-6357"
      },
      {
        "name": "Zaja",
        "number": "(550) 327-5919"
      },
      {
        "name": "Alexis",
        "number": "(550) 029-8397"
      },
      {
        "name": "Maxine",
        "number": "(550) 140-5625"
      }
    ]
  },
  {
    "id": 2,
    "type": "Bicicleta",
    "name": "BMX",
    "manufactor": "PDM",
    "image": "./assets/vehicles/bmx-pdm.png",
    "sellprice": 3000,
    "topspeed": 40,
    "seats": 1,
    "drivetrain": "RWD",
    "gears": 1,
    "transmition": "Manual",
    "storage": 0,
    "contacts": [
      {
        "name": "Oliver",
        "number": "(550) 359-6357"
      },
      {
        "name": "Zaja",
        "number": "(550) 327-5919"
      },
      {
        "name": "Alexis",
        "number": "(550) 029-8397"
      },
      {
        "name": "Maxine",
        "number": "(550) 140-5625"
      }
    ]
  },
  {
    "id": 3,
    "type": "Bicicleta",
    "name": "Fixter",
    "manufactor": "PDM",
    "image": "./assets/vehicles/fixter-pdm.png",
    "sellprice": 6000,
    "topspeed": 40,
    "seats": 1,
    "drivetrain": "RWD",
    "gears": 1,
    "transmition": "Manual",
    "storage": 0,
    "contacts": [
      {
        "name": "Oliver",
        "number": "(550) 359-6357"
      },
      {
        "name": "Zaja",
        "number": "(550) 327-5919"
      },
      {
        "name": "Alexis",
        "number": "(550) 029-8397"
      },
      {
        "name": "Maxine",
        "number": "(550) 140-5625"
      }
    ]
  },
  {
    "id": 4,
    "type": "Bicicleta",
    "name": "Scorcher",
    "manufactor": "PDM",
    "image": "./assets/vehicles/mtb-bike.png",
    "sellprice": 5000,
    "topspeed": 40,
    "seats": 1,
    "drivetrain": "RWD",
    "gears": 1,
    "transmition": "Manual",
    "storage": 0,
    "contacts": [
      {
        "name": "Oliver",
        "number": "(550) 359-6357"
      },
      {
        "name": "Zaja",
        "number": "(550) 327-5919"
      },
      {
        "name": "Alexis",
        "number": "(550) 029-8397"
      },
      {
        "name": "Maxine",
        "number": "(550) 140-5625"
      }
    ]
  },
  {
    "id": 5,
    "type": "Bicicleta",
    "name": "Cruiser",
    "manufactor": "PDM",
    "image": "./assets/vehicles/vintage-bike-pdm.png",
    "sellprice": 3000,
    "topspeed": 40,
    "seats": 1,
    "drivetrain": "RWD",
    "gears": 1,
    "transmition": "Manual",
    "storage": 0,
    "contacts": [
      {
        "name": "Oliver",
        "number": "(550) 359-6357"
      },
      {
        "name": "Zaja",
        "number": "(550) 327-5919"
      },
      {
        "name": "Alexis",
        "number": "(550) 029-8397"
      },
      {
        "name": "Maxine",
        "number": "(550) 140-5625"
      }
    ]
  },
  {
    "id": 6,
    "type": "Bicicleta",
    "name": "Tri-Cycles Race Bike",
    "manufactor": "PDM",
    "image": "./assets/vehicles/try-cicle-race-bike.png",
    "sellprice": 5000,
    "topspeed": 40,
    "seats": 1,
    "drivetrain": "RWD",
    "gears": 1,
    "transmition": "Manual",
    "storage": 0,
    "contacts": [
      {
        "name": "Oliver",
        "number": "(550) 359-6357"
      },
      {
        "name": "Zaja",
        "number": "(550) 327-5919"
      },
      {
        "name": "Alexis",
        "number": "(550) 029-8397"
      },
      {
        "name": "Maxine",
        "number": "(550) 140-5625"
      }
    ]
  },
];