# To-Do List App (Flutter)

Aplikasi Flutter sederhana dengan fitur:
- Tambah tugas
- Centang tugas selesai
- Hapus tugas

# Struktur Folder
lib/
├── main.dart
├── models/todo.dart
├── providers/todo_provider.dart
├── widgets/todo_item.dart
└── pages/
├── home_page.dart
└── add_todo_page.dart

# Widget Tree
MaterialApp
└── HomePage
├── AppBar
├── ListView (TodoItem)
└── FloatingActionButton → AddTodoPage

# Alasan Memakai Provider
- Provider resmi direkomendasikan oleh Flutter.  
- Mudah dipahami pemula.  
- Memisahkan logic (data) dan UI, sehingga kode lebih rapi.  
- Cocok untuk aplikasi kecil seperti To-Do List.

# link Reccord
https://drive.google.com/file/d/1RA3LrfY0S9DEkPC590ZKQGyxqiiDuRRC/view?usp=sharing
