// 3-greet_user.dart

import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    var parsedData = jsonDecode(userData);
    String username = parsedData['username'];
    // Return the greeting.
    return 'Hello $username';
  } catch (e) {
    // If an error occurs, catch it and return the error message.
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    // Check the user's credentials.
    bool credentialsValid = await checkCredentials();
    print('There is a user: $credentialsValid');
    if (credentialsValid) {
      // If the credentials are valid, greet the user.
      return await greetUser();
    } else {
      // If the credentials are not valid, return an error message.
      return 'Wrong credentials';
    }
  } catch (e) {
    // If an error occurs, catch it and return the error message.
    return 'error caught: $e';
  }
}
