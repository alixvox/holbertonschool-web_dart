import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  const String apiUrl = 'https://rickandmortyapi.com/api/character';

  try {
    // Send a GET request to the API
    final response = await http.get(Uri.parse(apiUrl));

    // If the call to the server was successful, parse the JSON
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load characters');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
