import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/task.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Task>(
      builder: (context, storedValue, child) {
        return Card(
          color: Colors.yellow[200],
          child: Text(
            storedValue.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
