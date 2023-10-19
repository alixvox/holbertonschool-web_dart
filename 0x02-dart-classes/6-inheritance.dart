// 6-password.dart

class Password {
  String _password;

  // Constructor
  Password({String? password}) : _password = password ?? '';

  // Getter for _password
  String get password => _password;

  // Setter for _password
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    // Check if the length of the password is between 8 and 16
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check if the password contains both uppercase and lowercase letters
    bool hasUppercase = _password.contains(new RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(new RegExp(r'[a-z]'));

    // Check if the password contains numbers
    bool hasDigits = _password.contains(new RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasDigits;
  }
}

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String user_password;

  // Constructor
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  }) : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
