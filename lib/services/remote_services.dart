import 'package:api_with_state_manager/models/todo.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Todo>?> getAllTodo() async {
    try {
      var response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if (response.statusCode == 200) {
        return todoFromJson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
