// 2-password.dart

class Password {
  String password = '';

  bool isValid() {
    // Check if the length of the password is between 8 and 16
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check if the password contains both uppercase and lowercase letters
    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));

    // Check if the password contains numbers
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
