import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');

  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada, OK!');

      Map<String, dynamic> dados = json.decode(response.body);
      Todo todo = Todo.fromJson(dados);

      print(todo.title);
      print(todo.toJson());
    } else {
      print('erro');
    }
  });
}

class Todo {
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(Map json) {
    return Todo(json['userId'], json['id'], json['title'], json['completed']);
  }

  Map toJson() => {
        'userId': this.userId,
        'id': this.id,
        'title': this.title,
        'completed': this.completed,
      };
}
