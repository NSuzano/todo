import 'package:flutter_test/flutter_test.dart';
import 'package:todo/src/cubits/board_cubit.dart';
import 'package:todo/src/sates/board_state.dart';

void main() {
  final cubit = BoardCubit();
  group('fetchTask |', () {
    testWidgets('deve pegar todas as tasks', (tester) async {
      expect(cubit.stream, emitsInOrder([isA<LoadingBoardState>(), isA<GettedTasksBoardState>()]));
      await cubit.fetchTasks();
    });
  });
}
