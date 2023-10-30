// 1-get_user_id.dart

import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();  // Wait for the fetchUserData() function to complete
  Map<String, dynamic> userMap = json.decode(userData);  // Parse the JSON string
  return userMap['id'];  // Return the user's ID
}
