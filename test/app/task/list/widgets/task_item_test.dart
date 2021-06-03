import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/app/task/list/widgets/task_item.dart';
import 'package:todo_app/domain/entities/task.dart';

void main() {
  Widget _buildTaskItem(Task task) {
    return MaterialApp(home: Material(child: TaskItem(task: task)));
  }

  group('TaskItem', () {
    testWidgets(
      'description field should be filled',
      (WidgetTester tester) async {
        const task = Task(id: "id", description: "Teste", isCompleted: true);

        await tester.pumpWidget(_buildTaskItem(task));

        final descriptionFieldFinder = find.text("Teste");

        expect(descriptionFieldFinder, findsOneWidget);
      },
    );

    testWidgets(
      'checkbox should be checked',
      (WidgetTester tester) async {
        const task = Task(id: "id", description: "Teste", isCompleted: true);

        await tester.pumpWidget(_buildTaskItem(task));

        final checkboxFinder = find.byType(Checkbox);

        expect(checkboxFinder, findsOneWidget);

        expect(tester.widget<Checkbox>(checkboxFinder).value, true);
      },
    );
  });
}
