import 'package:flutter/cupertino.dart';

class Todo {
  final String title;
  final String description;
//constructor
  Todo(this.title, this.description);
}

class Todomodel extends ChangeNotifier {
  final List<Todo> _items = [];

  //for getter
  List<Todo> get todoItems => _items;

  void addtodo(Todo n) {
    _items.add(n);
    notifyListeners(); //live add
  }

  void clearTodo() {
    _items.clear();
    notifyListeners(); //live clear
  }
}
