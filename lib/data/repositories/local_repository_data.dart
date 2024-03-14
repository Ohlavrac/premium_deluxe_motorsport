import 'package:premium_deluxe_motorsport/data/datasources/local/local_datasource_imp.dart';
import 'package:premium_deluxe_motorsport/domain/entities/vehicle_entity.dart';
import 'package:premium_deluxe_motorsport/domain/repositories/local_repository.dart';

class LocalRepositoryData extends LocalRepository {
  LocalRepositoryData() : super(local: LocalDatasourceImp());
  @override
  List<VehicleEntity> getAllVehicles() {
    return local.getAllVehicles();
  }

}