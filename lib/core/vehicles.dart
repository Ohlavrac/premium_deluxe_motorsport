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
        "name": "Zeja",
        "number": "(XXX) XXX-XXXX"
      },
      {
        "name": "Alexis",
        "number": "(XXX) XXX-XXXX"
      },
      {
        "name": "Maxine",
        "number": "(XXX) XXX-XXXX"
      }
    ]
  },
];