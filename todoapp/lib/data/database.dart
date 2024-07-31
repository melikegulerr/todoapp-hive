import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];

  final _mybox = Hive.box("mybox");

  void createInitialData() {
    todoList = [
      ["coding", false],
      ["yoga", false],
    ];
  }

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateBase() {
    _mybox.put("TODOLIST", todoList);
  }
}
