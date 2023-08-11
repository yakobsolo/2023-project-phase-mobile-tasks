import 'package:flutter/material.dart';

class AddEditTaskScreen extends StatefulWidget {
  const AddEditTaskScreen({super.key});

  @override
  State<AddEditTaskScreen> createState() => _AddEditTaskScreen();
}

class _AddEditTaskScreen extends State<AddEditTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 170, 1, 255),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: const Text("Create new task"),
        actions: [
          IconButton(
            icon: Icon(
                Icons.space_dashboard_rounded), // Add your dashboard icon here
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Main Task Name',
              labelStyle: TextStyle(
                  color:
                      Color.fromARGB(255, 170, 1, 255)), // Change label color
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        Color.fromARGB(255, 170, 1, 255)), // Change label color
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 170, 1,
                        255)), // Change border color when not focused
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Due date',
              labelStyle: TextStyle(
                  color:
                      Color.fromARGB(255, 170, 1, 255)), // Change label color
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        Color.fromARGB(255, 170, 1, 255)), // Change label color
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 170, 1,
                        255)), // Change border color when not focused
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: TextStyle(
                  color:
                      Color.fromARGB(255, 170, 1, 255)), // Change label color
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        Color.fromARGB(255, 170, 1, 255)), // Change label color
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 170, 1,
                        255)), // Change border color when not focused
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/todoList");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 170, 1, 255),
              // padding: const EdgeInsets.all(10), // Adjust padding as needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              fixedSize: const Size(150, 50),
            ),
            child: Text("Add Task"),
          ),
        ]),
      ),
    );
  }
}
