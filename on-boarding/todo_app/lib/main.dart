import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/todo_list_screen.dart';
import 'screens/task_detail_screen.dart';
import 'screens/add_edit_task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/todoList': (context) => TodoListScreen(),
        '/taskDetail': (context) => TaskDetailScreen(),
        '/addTask': (context) => AddEditTaskScreen(),
        '/editTask': (context) => AddEditTaskScreen(),
      },
    );
  }
}
