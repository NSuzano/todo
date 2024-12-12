import 'package:todo/src/model/task.dart';

abstract class BoardRepositories {
  Future<List<Task>> fetch();
  Future<List<Task>> update(List<Task> tasks);
}
