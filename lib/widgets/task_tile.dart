import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final String taskDescription;
  final bool isCompleted;
  final VoidCallback toggleCompleted;
  final VoidCallback deleteTask;
  final VoidCallback editTask;

  TaskTile({
    required this.taskTitle,
    required this.taskDescription,
    required this.isCompleted,
    required this.toggleCompleted,
    required this.deleteTask,
    required this.editTask,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      elevation: 5.0,
      color: Colors.blue[800],
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            taskTitle,
            style: TextStyle(
              decoration: isCompleted ? TextDecoration.lineThrough : null,
              color: Colors.white
            ),
          ),
          subtitle: Text(
            taskDescription,
            style: TextStyle(
              color: Colors.white,
            
            ),
          ),
          trailing: Wrap(
            spacing: 12,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: editTask,
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: deleteTask,
                color: Colors.white,
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(
              isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
            ),
            onPressed: toggleCompleted,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
