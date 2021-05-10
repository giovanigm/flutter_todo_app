import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';
import 'package:todo_app/domain/usecases/task/watch_tasks.dart';

import 'watch_tasks_test.mocks.dart';

@GenerateMocks([TaskRepository])
void main() {
  late WatchTasks usecase;
  late MockTaskRepository mockTaskRepository;
  late User user;

  setUp(() {
    mockTaskRepository = MockTaskRepository();
    usecase = WatchTasks(mockTaskRepository);
    user = const User(
      id: "123",
      name: "Teste",
      age: 20,
      email: "teste@teste.com",
      token: "token",
    );
  });

  test('Should get stream of tasks', () {
    const tasks = <Task>[
      Task(id: "1", description: "Teste", isCompleted: false),
      Task(id: "2", description: "Teste 2", isCompleted: true),
    ];

    const expectedResult = Result.success(value: tasks);

    when(mockTaskRepository.watchTasks(user: user))
        .thenAnswer((_) => Stream.fromIterable([expectedResult]));

    final stream = usecase(user: user);

    expect(stream, emitsInOrder([expectedResult]));

    verify(mockTaskRepository.watchTasks(user: user));
    verifyNoMoreInteractions(mockTaskRepository);
  });
}
