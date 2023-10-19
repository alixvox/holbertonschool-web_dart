// 0-users_count.dart

import '0-util.dart';  // Import the utility file to access the fetchUsersCount() function.

Future<void> usersCount() async {
  int count = await fetchUsersCount();  // Wait for the fetchUsersCount() function to complete.
  print(count);
}
