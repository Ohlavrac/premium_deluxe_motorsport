import 'package:flutter/material.dart';
import 'package:premium_deluxe_motorsport/domain/entities/vehicle_entity.dart';
import 'package:premium_deluxe_motorsport/domain/usecases/get_vehicles_usecase.dart';

class VehicleProvider extends ChangeNotifier {
  final GetVehiclesUsecase getVehiclesUsecase = GetVehiclesUsecase();

  List<VehicleEntity> getVehicles() {
    final response = getVehiclesUsecase.getVehicles();
    notifyListeners();
    return response;
  }
}