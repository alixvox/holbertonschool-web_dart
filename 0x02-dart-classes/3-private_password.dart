// 2-password.dart

class Password {
  String _password;

  // Constructor
  Password({String password = ''}) : _password = password;

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

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
