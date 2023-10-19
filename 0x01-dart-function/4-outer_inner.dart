// 4-outer_inner.dart

void outer(String name, String id) => print(inner(name, id));

String inner(String name, String id) {
  var nameParts = name.split(' ');
  var formattedName = '${nameParts[1].substring(0, 1)}.${nameParts[0]}'; // 'B.' followed by the first word of the name
  return 'Hello Agent $formattedName your id is $id';
}
