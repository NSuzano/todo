import 'package:bloc/bloc.dart';
import 'package:todo/src/model/task.dart';
import 'package:todo/src/sates/board_state.dart';

class BoardCubit extends Cubit<BoardState> {
  BoardCubit() : super(EmptyBoardState());

  Future<void> fetchTasks() async {
    emit(LoadingBoardState());
  }

  Future<void> addTask(Task newTask) async {}

  Future<void> removeTask(Task newTask) async {}

  Future<void> checkTask(Task newTask) async {}
}
