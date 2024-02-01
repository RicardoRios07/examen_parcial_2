import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/tasks_provider.dart';
import '../widgets/task_tile.dart';
import 'edit_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
        backgroundColor: Colors.blue[300],
      ),
      body: Consumer<TasksProvider>(
        builder: (context, tasksProvider, child) => ListView.builder(
          itemCount: tasksProvider.tasks.length,
          itemBuilder: (context, index) => TaskTile(
            taskTitle: tasksProvider.tasks[index].title,
            taskDescription: tasksProvider.tasks[index].description,
            isCompleted: tasksProvider.tasks[index].isCompleted,
            toggleCompleted: () {
              tasksProvider.toggleTaskCompletion(index);
            },
            deleteTask: () {
              tasksProvider.deleteTask(index);
            },
            editTask: () { 
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditTaskScreen(
                    task: tasksProvider.tasks[index],
                    taskIndex: index,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[300],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditTaskScreen(),
            ),
          );
        },
        child: Icon(Icons.add,
          color: Colors.white,),
      ),
    );
  }
}

