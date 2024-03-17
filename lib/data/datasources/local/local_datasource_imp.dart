import 'package:premium_deluxe_motorsport/core/vehicles.dart';
import 'package:premium_deluxe_motorsport/data/datasources/local_datasource.dart';
import 'package:premium_deluxe_motorsport/data/models/contact_model.dart';
import 'package:premium_deluxe_motorsport/data/models/vehicle_model.dart';

class LocalDatasourceImp implements LocalDatasource {
  @override
  List<VehicleModel> getAllVehicles() {
    return vehicles;
  }

  @override
  List<ContactModel>? getAllContactsById(int id) {
    return vehicles[id].contacts;
  }
}