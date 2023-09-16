import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.task});
  final Todo task;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.task.completed! ? Colors.grey : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /* TODO: Firebase işlemlerinde düzelt
            widget.task.type == TaskType.note
                ? Image.asset("lib/assets/images/category_1.png")
                : widget.task.type == TaskType.calendar
                    ? Image.asset("lib/assets/images/category_2.png")
                    : Image.asset("lib/assets/images/category_3.png"),
            */
            Image.asset("lib/assets/images/category_1.png"),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.task.todo!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: widget.task.completed!
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontSize: 21,
                    ),
                  ),
                  Text("User: ${widget.task.userId!}"),
                ],
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (val) => {
                setState(() {
                  isChecked = val!;
                  widget.task.completed = !widget.task.completed!;
                })
              },
            )
          ],
        ),
      ),
    );
  }
}
