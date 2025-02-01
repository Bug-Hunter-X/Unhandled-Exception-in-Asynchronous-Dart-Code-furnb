```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomException implements Exception {
  final String message;
  final dynamic originalException;

  CustomException(this.message, [this.originalException]);

  @override
  String toString() {
    return 'CustomException: $message${originalException != null ? '
Original Exception: $originalException' : ''}';
  }
}

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key']);
    } else {
      throw CustomException('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
    throw CustomException('Invalid JSON format', e);
  } catch (e) {
    print('Error: $e');
    throw CustomException('Failed to fetch data', e);
  }
}
```