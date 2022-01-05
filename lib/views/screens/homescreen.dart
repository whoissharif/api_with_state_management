import 'package:api_with_state_manager/controllers/todo_controller.dart';
import 'package:api_with_state_manager/views/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Obx(
        () {
          if (todoController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: todoController.listofTodo.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                      ),
                      title: Text(todoController.listofTodo[index].title!),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Details(
                            title: todoController.listofTodo[index].title!,
                          );
                        }));
                      }),
                );
              },
            );
          }
        },
      ),
    );
  }
}
