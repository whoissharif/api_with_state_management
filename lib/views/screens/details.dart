import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({Key? key, this.title}) : super(key: key);

  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(title!)),
        ],
      ),
    );
  }
}
