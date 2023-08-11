import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/image7.jpeg'),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/todoList');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 138, 4, 255),
                padding: const EdgeInsets.all(16), // Adjust padding as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      16), // Adjust border radius as needed
                ),
                fixedSize: const Size(300, 50), // Adjust the button's size here
              ),
              child: const Text("Get Started"),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
