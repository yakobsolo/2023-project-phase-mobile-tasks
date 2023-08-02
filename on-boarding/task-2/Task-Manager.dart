import 'dart:io'; // improting the input output library
// Task class
class Task {
  String title;
  String description;
  DateTime dueDate;
  bool isCompleted;

  Task(this.title, this.description, this.dueDate, this.isCompleted);
}
// TaskManager class
class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void viewAllTasks() {
    if (tasks.isEmpty) {
      print("No tasks found.");
    } else {
      print("All Tasks:");
      for (var task in tasks) {
        printTask(task);
      }
    }
  }

  void viewCompletedTasks() {
    var completedTasks = tasks.where((task) => task.isCompleted).toList();
    if (completedTasks.isEmpty) {
      print("No completed tasks found.");
    } else {
      print("Completed Tasks:");
      for (var task in tasks){

      printTask(task);
      }
    }
  }

  void viewPendingTasks() {
    var pendingTasks = tasks.where((task) => !task.isCompleted).toList();
    if (pendingTasks.isEmpty) {
      print("No pending tasks found.");
      return;
    }
    print("Pending Tasks:");
    pendingTasks.forEach((task) => printTask(task));
  }

  void editTask(int index, Task updatedTask) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid task index.");
      return;
    }
    tasks[index] = updatedTask;
  }

  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid task index.");
      return;
    }
    tasks.removeAt(index);
  }

  void printTask(Task task) {
    print("Title: ${task.title}");
    print("Description: ${task.description}");
    print("Due Date: ${task.dueDate}");
    print("Status: ${task.isCompleted ? 'Completed' : 'Pending'}");
    print("-----------------------------");
  }
}

void main() {
  var taskManager = TaskManager();

  while (true) {
    print("Task Manager Application");
    print("1. Add a new task");
    print("2. View all tasks");
    print("3. View only completed tasks");
    print("4. View only pending tasks");
    print("5. Edit a task");
    print("6. Delete a task");
    print("0. Exit");

    stdout.write("Enter your choice: ");
    var choice = int.parse(stdin.readLineSync() ?? "0");

    switch (choice) {
      case 1:
        stdout.write("Enter title: ");
        var title = stdin.readLineSync()!;
        stdout.write("Enter description: ");
        var description = stdin.readLineSync()!;
        stdout.write("Enter due date (YYYY-MM-DD): ");
        var dueDate = DateTime.parse(stdin.readLineSync()!);
        var task = Task(title, description, dueDate, false);
        taskManager.addTask(task);
        print("Task added successfully!");
        break;

      case 2:
        taskManager.viewAllTasks();
        break;

      case 3:
        taskManager.viewCompletedTasks();
        break;

      case 4:
        taskManager.viewPendingTasks();
        break;

      case 5:
        stdout.write("Enter the task index to edit: ");
        var index = int.parse(stdin.readLineSync()!);
        stdout.write("Enter updated title: ");
        var updatedTitle = stdin.readLineSync()!;
        stdout.write("Enter updated description: ");
        var updatedDescription = stdin.readLineSync()!;
        stdout.write("Enter updated due date (YYYY-MM-DD): ");
        var updatedDueDate = DateTime.parse(stdin.readLineSync()!);
        stdout.write("Is the task completed? (true/false): ");
        var updatedStatus = bool.fromEnvironment(stdin.readLineSync()!);
        var updatedTask = Task(
            updatedTitle, updatedDescription, updatedDueDate, updatedStatus);
        taskManager.editTask(index, updatedTask);
        print("Task updated successfully!");
        break;

      case 6:
        stdout.write("Enter the task index to delete: ");
        var deleteIndex = int.parse(stdin.readLineSync()!);
        taskManager.deleteTask(deleteIndex);
        print("Task deleted successfully!");
        break;

      case 0:
        print("Exiting Task Manager Application.");
        return;

      default:
        print("Invalid choice. Please try again.");
    }

    print("\n");
  }
}
