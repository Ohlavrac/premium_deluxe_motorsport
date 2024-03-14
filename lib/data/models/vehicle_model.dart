import 'package:premium_deluxe_motorsport/domain/entities/vehicle_entity.dart';

class VehicleModel extends VehicleEntity{
  int? id;
  String? type;
  String? name;
  String? manufactor;
  String? image;
  int? sellprice;
  int? topspeed;
  int? seats;
  String? drivetrain;
  int? gears;
  String? transmition;
  int? storage;

  VehicleModel(
      {this.id,
      this.type,
      this.name,
      this.manufactor,
      this.image,
      this.sellprice,
      this.topspeed,
      this.seats,
      this.drivetrain,
      this.gears,
      this.transmition,
      this.storage});

  VehicleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    manufactor = json['manufactor'];
    image = json['image'];
    sellprice = json['sellprice'];
    topspeed = json['topspeed'];
    seats = json['seats'];
    drivetrain = json['drivetrain'];
    gears = json['gears'];
    transmition = json['transmition'];
    storage = json['storage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['manufactor'] = this.manufactor;
    data['image'] = this.image;
    data['sellprice'] = this.sellprice;
    data['topspeed'] = this.topspeed;
    data['seats'] = this.seats;
    data['drivetrain'] = this.drivetrain;
    data['gears'] = this.gears;
    data['transmition'] = this.transmition;
    data['storage'] = this.storage;
    return data;
  }
}
