import 'package:premium_deluxe_motorsport/data/models/vehicle_model.dart';

import '../models/contact_model.dart';

abstract class LocalDatasource {
  List<VehicleModel> getAllVehicles();
  List<ContactModel>? getAllContactsById(int id);
}