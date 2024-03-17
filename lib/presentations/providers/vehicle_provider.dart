import 'package:flutter/material.dart';
import 'package:premium_deluxe_motorsport/domain/entities/contact_entity.dart';
import 'package:premium_deluxe_motorsport/domain/entities/vehicle_entity.dart';
import 'package:premium_deluxe_motorsport/domain/usecases/get_contacts_by_id_usecase.dart';
import 'package:premium_deluxe_motorsport/domain/usecases/get_vehicles_usecase.dart';

class VehicleProvider extends ChangeNotifier {
  final GetVehiclesUsecase getVehiclesUsecase = GetVehiclesUsecase();
  final GetContactsByIdUseCase getContactsByIdUseCase = GetContactsByIdUseCase();

  List<VehicleEntity> getVehicles() {
    final response = getVehiclesUsecase.getVehicles();
    notifyListeners();
    return response;
  }

  List<ContactEntity>? getContactsById(int id) {
    final response = getContactsByIdUseCase.getContactsById(id);
    notifyListeners();
    return response;
  }
}