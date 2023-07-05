import 'package:json_annotation/json_annotation.dart';

part 'new_user.g.dart';

@JsonSerializable()
class NewUser {
  NewUser(this.name, this.email, this.registrationDateMillis);

  String name;
  String email;
  @JsonKey(name: 'registration_date_millis')
  final int registrationDateMillis;

  factory NewUser.fromJson(Map<String, dynamic> json) =>
      _$NewUserFromJson(json);

  Map<String, dynamic> toJson() => _$NewUserToJson(this);
}
