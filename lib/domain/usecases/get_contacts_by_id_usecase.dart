import 'package:premium_deluxe_motorsport/data/repositories/local_repository_data.dart';
import 'package:premium_deluxe_motorsport/domain/entities/contact_entity.dart';
import 'package:premium_deluxe_motorsport/domain/repositories/local_repository.dart';

class GetContactsByIdUseCase {
  late LocalRepository repository;

  GetContactsByIdUseCase() : repository = LocalRepositoryData();

  List<ContactEntity>? getContactsById(id) {
    final response = repository.getAllContactsById(id);
    return response;
  }
}