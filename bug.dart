```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Access data from the JSON here
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception appropriately. For example, print it to the console:
    print('Error: $e');
    // Or throw a custom exception with more specific error information
    // throw CustomException('Failed to fetch data', e);
  }
}
```