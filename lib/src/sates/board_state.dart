import 'package:todo/src/model/task.dart';

sealed class BoardState {}

class LoadingBoardState implements BoardState {}

class GettedTasksBoardState implements BoardState {
  final List<Task> tasks;

  GettedTasksBoardState({required this.tasks});
}

class EmptyBoardState extends GettedTasksBoardState {
  EmptyBoardState() : super(tasks: []);
}

class FailureBoardSgtate implements BoardState {
  final String message;

  FailureBoardSgtate({required this.message});
}
