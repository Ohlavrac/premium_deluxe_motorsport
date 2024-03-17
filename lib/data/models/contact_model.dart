import 'package:premium_deluxe_motorsport/domain/entities/contact_entity.dart';

class ContactModel extends ContactEntity {
  String? name;
  String? number;

  ContactModel({this.name, this.number});

  ContactModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['number'] = this.number;
    return data;
  }
}
