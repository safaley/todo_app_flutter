import 'package:flutter/material.dart';
import 'package:flutter_projects/model/task_data.dart';
import 'package:flutter_projects/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

String data = '';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: TasksScreen(),
      ),
      create: (_) => TaskData(),
    );
  }
}
