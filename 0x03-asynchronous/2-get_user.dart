// 2-get_user.dart

import '2-util.dart'; 

Future<void> getUser() async {
  try {
    // Try to fetch the user data
    String user = await fetchUser();
    print(user);
  } catch (e) {
    // If an error occurs, catch it and print the error message
    print('error caught: $e');
  }
}
