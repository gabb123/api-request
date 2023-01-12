import 'model/model.dart';
import 'package:http/http.dart' as http;

Future<List<Students>> fetchStudents() async {
  String url = "http://localhost:3000/";
  var dataUrl = Uri.parse('$url/todos');
  final response = await http.get(dataUrl);
  return productsFromJson(response.body);
}



