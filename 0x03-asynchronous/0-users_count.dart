// 0-users_count.dart

import '0-util.dart';

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}
