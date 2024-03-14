import 'package:premium_deluxe_motorsport/data/repositories/local_repository_data.dart';
import 'package:premium_deluxe_motorsport/domain/entities/vehicle_entity.dart';
import 'package:premium_deluxe_motorsport/domain/repositories/local_repository.dart';

class GetVehiclesUsecase {
  late LocalRepository repository;

  GetVehiclesUsecase() : repository = LocalRepositoryData();

  List<VehicleEntity> getVehicles() {
    final response = repository.getAllVehicles();
    return response;
  }
}