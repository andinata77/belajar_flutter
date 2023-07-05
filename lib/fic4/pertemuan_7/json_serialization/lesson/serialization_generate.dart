// ignore_for_file: public_member_api_docs, sort_constructors_first
//Tambahkan dependensi json_serializable dan json_annotation di file pubspec.yaml:

// dependencies:
//   json_annotation: ^4.3.0

// dev_dependencies:
//   build_runner: ^2.1.5
//   json_serializable: ^4.3.0

import 'package:json_annotation/json_annotation.dart';

part 'serialization_generate.g.dart';

@JsonSerializable()
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
