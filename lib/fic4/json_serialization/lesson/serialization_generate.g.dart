// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serialization_generate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      name: json['name'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
    };
