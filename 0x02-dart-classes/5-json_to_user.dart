// 1-usertojson.dart

class User {
  int id;
  String name;
  int age;
  double height;

  // Constructor
  User({required this.id, required this.name, required this.age, required this.height});

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Convert JSON to User object
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }

}
