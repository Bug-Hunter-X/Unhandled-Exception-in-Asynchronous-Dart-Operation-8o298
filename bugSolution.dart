```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //Informative error message for debugging
      print('Request failed with status: ${response.statusCode}. Response body: ${response.body}');
      return null; // or throw an exception depending on your error handling strategy
    }
  } catch (e) {
    //Detailed error message for better debugging
    print('An error occurred while fetching data: $e');
    return null; // or rethrow
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data fetched successfully: $data');
  } else {
    print('Failed to fetch data.');
  }
}
```