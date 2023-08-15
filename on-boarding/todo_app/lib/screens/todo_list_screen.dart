import 'package:flutter/material.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key}); // Add a key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 170, 1, 255),
        title: const Center(
          child: const Text("Todo List"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.space_dashboard_rounded),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250, // Adjust the height as needed
            child: Image.asset("assets/image1.jpg", fit: BoxFit.cover), // Replace with your image asset
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Task List",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/taskDetail");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [BoxShadow(color: Color.fromARGB(40, 0, 0, 0), blurRadius: 7)],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      height: 90, // Adjust the height as needed
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(task.title),
                              SizedBox(height: 4),
                              Text(task.deadline),
                            ],
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 2),
                            child: VerticalDivider(
                              color: Color.fromARGB(255, 76, 255, 183),
                              thickness: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      
    );
  }
}

List<Task> tasks = [
  Task(title: "UI/UX Design", deadline: "2023-02-24"),
  Task(title: "App Development", deadline: "2023-03-15"),
  Task(title: "Testing Phase", deadline: "2023-04-10"),
  // Add more tasks here
];

class Task {
  final String title;
  final String deadline;

  Task({required this.title, required this.deadline});
}
