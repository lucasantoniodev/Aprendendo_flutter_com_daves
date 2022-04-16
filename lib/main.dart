import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/');

  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada, OK!');

      // print(json.decode(response.body));

      // var teco = json.decode(response.body) as List;
      List lista = json.decode(response.body);

      // var minhaLista = Todos(lista);
      Todos minhaLista = Todos(lista);
      print(minhaLista.todos?[0]);

      minhaLista.todos?.forEach((element) {
        // print(element);

        // var todo = Todo.fromJson(element);
        Todo todo = Todo.fromJson(element);
        print(todo.title);
      });
    } else {
      print('erro');
    }
  });
}

class Todos {
  final List? todos;

  Todos(this.todos);
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
