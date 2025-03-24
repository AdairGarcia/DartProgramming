import 'dart:convert';

import 'package:http/http.dart' as http;

// Program to request data from the server
void main() async {
  final httpPackageUrl = Uri.https('dart.dev', '/f/packages/http.json');

  final response = await http.get(httpPackageUrl);

  if (response.statusCode == 200) {
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    // accessing response headers
    print('Response content-type header: ${response.headers['content-type']}');

    // accessing response body parameters
    var responseBody = jsonDecode(response.body); // you have to decode the response body to json because it is in string format
    print('Response description: ${responseBody['description']}');
    print('Response repository url: ${responseBody['repository']}');

  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
