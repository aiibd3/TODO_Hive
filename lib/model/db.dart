import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box("mybox");

  // todo : run this method if this is the first time ever opening the app,
  void createInitialData() {
    toDoList = [
      ["Make bed", false],
      ["Check emails", false],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST") ?? [];
  }

  // update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
