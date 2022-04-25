import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/add_todo.dart';
import 'package:todolist/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProviderTodo = Provider.of<Todomodel>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                ProviderTodo.clearTodo();
              },
              icon: Icon(Icons.delete))
        ],
        title: Text("TODO LIST_${ProviderTodo.todoItems.length}"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddTodo()));
          }),
      body: ListView.builder(
          itemCount: ProviderTodo.todoItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(ProviderTodo.todoItems[index].title),
            );
          }),
    );
  }
}
