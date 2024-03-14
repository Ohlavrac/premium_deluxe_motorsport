import 'package:premium_deluxe_motorsport/data/models/vehicle_model.dart';

abstract class LocalDatasource {
  List<VehicleModel> getAllVehicles();
}