import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Elevated Button 1'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.yellow),
                backgroundColor: MaterialStateProperty.resolveWith((states) =>
                    states.any((element) => element == MaterialState.pressed)
                        ? Colors.red
                        : Colors.blue),
                overlayColor:
                    MaterialStateProperty.all(Colors.green.withOpacity(0.5)),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.ac_unit),
              label: const Text('Elevated Button 2'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.purple,
                shadowColor: Colors.green,
                minimumSize: const Size(200, 40),
                alignment: Alignment.centerRight,
                animationDuration: const Duration(milliseconds: 200),
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.blue),
                padding: const EdgeInsets.all(8),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
