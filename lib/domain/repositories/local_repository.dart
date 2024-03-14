import 'package:premium_deluxe_motorsport/data/datasources/local_datasource.dart';
import 'package:premium_deluxe_motorsport/domain/entities/vehicle_entity.dart';

abstract class LocalRepository {
  late LocalDatasource local;

  LocalRepository({required this.local});

  List<VehicleEntity> getAllVehicles();
}