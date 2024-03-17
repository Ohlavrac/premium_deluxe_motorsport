import 'package:premium_deluxe_motorsport/domain/entities/contact_entity.dart';

class VehicleEntity {
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
  List<ContactEntity>? contactsEntity;

  VehicleEntity(
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
      this.storage,
      this.contactsEntity});
}