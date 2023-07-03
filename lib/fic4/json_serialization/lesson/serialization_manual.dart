// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Person {
  String name;
  int age;
  Person({
    required this.name,
    required this.age,
  });

  factory Person.fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);

    return Person(
      name: map['name'],
      age: map['age'],
    );
  }
  String toJson() {
    Map<String, dynamic> map = {
      'name': name,
      'age': age,
    };
    return jsonEncode(map);
  }
}

void main() {
  //Serialization
  Person person = Person(name: 'Rozak', age: 20);
  String jsonString = person.toJson();
  print(jsonString); // Output: {"name":"Rozak","age":20}

  //Deserialization
  String json = '{name: Rozak, age: 20}';
  Person rozak = Person.fromJson(json);
  print(rozak.name); // Output: Rozak
  print(rozak.age); // Output: 20
}
