import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/todo.dart';

class AddTodo extends StatelessWidget {
  TextEditingController cTitle = TextEditingController();
  TextEditingController cDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ProviderTodo = Provider.of<Todomodel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            controller: cTitle,
            decoration: InputDecoration(labelText: "Enter Title"),
          ),
          TextField(
            controller: cDescription,
            decoration: InputDecoration(labelText: "Enter Description"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  ProviderTodo.addtodo(Todo(cTitle.text, cDescription.text));
                  Navigator.pop(context);
                },
                child: Text("Add")),
          )
        ]),
      ),
    );
  }
}
