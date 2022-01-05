import 'package:api_with_state_manager/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoController {
  var client = http.Client();

  Future<List<Todo>> getAllTodo() async {
    List<Todo>? todoList;

    try {
      var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if(response.statusCode == 200){
        todoList = todoFromJson(response.body);
      }
      
    } catch (e) {
      print(e);
    }
    return todoList!;
  }
}
