import 'package:api_with_state_manager/models/todo.dart';
import 'package:api_with_state_manager/services/remote_services.dart';
import 'package:get/state_manager.dart';

class TodoController extends GetxController {
  var isLoading = true.obs;
  var listofTodo = <Todo>[].obs;

  @override
  void onInit() {
    getAllTodo();
    super.onInit();
  }

  void getAllTodo() async {
    try {
      isLoading(true);
      var todos = await RemoteServices.getAllTodo();
      if (todos != null) {
        listofTodo.value = todos;
      }
    } finally {
      isLoading(false);
    }
  }
}
