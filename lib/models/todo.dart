// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

List<Todo> todoFromJson(String str) => List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

String todoToJson(List<Todo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
    Todo({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    int? userId;
    int? id;
    String? title;
    bool? completed;

    factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        completed: json["completed"] == null ? null : json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId == null ? null : userId,
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "completed": completed == null ? null : completed,
    };
}
