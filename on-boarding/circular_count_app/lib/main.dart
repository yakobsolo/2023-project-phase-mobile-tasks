import 'package:flutter/material.dart';

void main() {
  runApp(const CircularCounterApp());
}

class CircularCounterApp extends StatelessWidget {
  const CircularCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const RootApp(),
    );
  }
}

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    void incrementCounter() {
      setState(() {
        counter++;
        counter = counter % 11;
      });
    }

    void decrementCounter() {
      setState(() {
        counter--;
        counter = counter % 11;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: incrementCounter,
                    child: const Text("Increment")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: decrementCounter, child: const Text("Decrement"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
