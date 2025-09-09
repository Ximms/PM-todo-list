import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';
import '../widgets/todo_item.dart';
import 'add_todo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = context.watch<TodoProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do List"),
      ),
      body: todoProvider.todos.isEmpty
          ? const Center(child: Text("Belum ada tugas, yuk tambah!"))
          : ListView.builder(
              itemCount: todoProvider.todos.length,
              itemBuilder: (context, index) {
                final todo = todoProvider.todos[index];
                return TodoItem(
                  todo: todo,
                  onToggle: () => todoProvider.toggleTodo(index),
                  onDelete: () => todoProvider.removeTodo(index),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddTodoPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
