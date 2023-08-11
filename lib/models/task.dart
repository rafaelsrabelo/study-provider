import 'dart:math';
import 'package:flutter/material.dart';

class Task extends ChangeNotifier {
  String title;
  Task(this.title);

  void randomize() {
    List<String> listTasks = [
      "Estude Flutter",
      "Tome um café",
      "Trabalhe pra Bee Coders 🐝",
      "Faca isso novamente..."
    ];
    title = listTasks[Random().nextInt(listTasks.length)];

    notifyListeners();
  }
}
