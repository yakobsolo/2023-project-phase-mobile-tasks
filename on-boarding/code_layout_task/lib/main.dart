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
      debugShowCheckedModeBanner: false,
      title: 'Codelab layout',
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
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Center(
          child: const Text("Todo List"),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.space_dashboard_rounded))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Image.asset("assets/image1.jpg"),
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(40, 0, 0, 0), blurRadius: 7),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("U"),
                      SizedBox(
                        width: 50,
                      ),
                      Text("UI/UX  Design"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text("2023-02-24"),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: VerticalDivider(
                          color: Color.fromARGB(255, 76, 255, 183),
                          thickness: 5,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(40, 0, 0, 0), blurRadius: 7),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("U"),
                      SizedBox(
                        width: 50,
                      ),
                      Text("UI/UX  Design"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text("2023-02-24"),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: VerticalDivider(
                          color: Color.fromARGB(255, 76, 255, 183),
                          thickness: 5,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(40, 0, 0, 0), blurRadius: 7),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("U"),
                      SizedBox(
                        width: 50,
                      ),
                      Text("UI/UX  Design"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text("2023-02-24"),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: VerticalDivider(
                          color: Color.fromARGB(255, 76, 255, 183),
                          thickness: 5,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {}, child: 
              Text("Create Task",),
              style:  ElevatedButton.styleFrom(
                fixedSize: const Size(150, 20),
              )
              ),
          ),
          
        ],
      ),
    );
  }
}
