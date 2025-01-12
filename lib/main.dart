import 'package:flutter/material.dart';
import 'package:flutter_form/animatedForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String text = 'Ali Raza';
  bool b = false;
  double slide = .5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 8),
              child: Switch(
                value: b,
                onChanged: (value) {
                  setState(() {
                    b = value;
                  });
                },
              ),
            ),
            const Divider(),
            Slider(
              value: slide,
              onChanged: (value) {
                setState(() {
                  slide = value;
                  print(value);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
