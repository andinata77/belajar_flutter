import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
// {
//     "id": 1,
//     "name": "Clothes",
//     "image": "https://picsum.photos/640/640?r=2622",
//     "creationAt": "2023-06-30T00:11:15.000Z",
//     "updatedAt": "2023-06-30T00:11:15.000Z"
// }

class Category {
  final int id;
  final String name;
  final String image;
  final String creationAt;
  final String updatedAt;
  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'creationAt': creationAt,
      'updatedAt': updatedAt,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      creationAt: map['creationAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}

void main() {
  String jsonString = '''
  {
    "id": 1,
    "name": "Clothes",
    "image": "https://picsum.photos/640/640?r=2622",
    "creationAt": "2023-06-30T00:11:15.000Z",
    "updatedAt": "2023-06-30T00:11:15.000Z"
  }
  ''';
// contoh json serialization class model (object) ini disarankan untuk menghindari typo
  final category = Category.fromJson(jsonString);
  print(category.name);

// contoh json serialization inline dibawah:
  // final Map<String, dynamic> categoryMap = jsonDecode(jsonString);
  // print(categoryMap['name']);
}
