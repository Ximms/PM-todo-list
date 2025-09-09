import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  // Tambah todo baru
  void addTodo(String title) {
    if (title.isEmpty) return;
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  // Toggle status (selesai / belum)
  void toggleTodo(int index) {
    _todos[index].isDone = !_todos[index].isDone;
    notifyListeners();
  }

  // Hapus todo
  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
