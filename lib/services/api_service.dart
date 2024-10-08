import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<List> fetchSupplements() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/supplements/'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load supplements');
    }
  }
}
