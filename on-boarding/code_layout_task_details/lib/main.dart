import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Details',
      debugShowCheckedModeBanner: false,
      home: Todo(),

    );
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 170, 1, 255),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: const Center(
          child: Text("Task Detail"),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.space_dashboard_rounded))
        ],
      ),

      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(

        children: [
          Image.asset("assets/image1.jpg"),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Title",
                style: TextStyle(
                  fontSize: 15,
                ),),
              ),
            Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 214, 214, 214),
              ),
            width: double.infinity,
            height: 50,
            child: Text("UI UX Design"),
          ),
          ),
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Description",
                style: TextStyle(
                  fontSize: 15,
                ),),
              ),
            Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 214, 214, 214),
              ),
            width: double.infinity,
            height: 100,
            child: Text("First i have to animate the logo to animate the design"),
          ),
          ),
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Deadline",
                style: TextStyle(
                  fontSize: 15,
                ),),
              ),
            Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 214, 214, 214),
              ),
            width: double.infinity,
            height: 50,
            child: Text("April 29, 2023"),
          ),
          ),
            ],
          ),
          
         
        ],
      ),),

    );
  }
}
