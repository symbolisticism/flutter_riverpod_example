import 'package:flutter/material.dart';
// import flutter_riverpod.dart
// import numbers_provider.dart

void main() {
  runApp(
    // add ProviderScope
    MaterialApp(
      home: const MyApp(),
      theme: ThemeData.light(
        useMaterial3: true,
      ),
    ),
  );
}

// make this a ConsumerStatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // make this ConsumerState<MyApp>
  State<MyApp> createState() => _MyAppState();
}

// make this ConsumerState<MyApp>
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // add reference to provider state

    // add reference to notifier in order to access functions

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Example'),
        actions: [
          IconButton(
            onPressed: () {}, // call 'subtract' function from notifier
            icon: const Icon(Icons.restart_alt_rounded),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {}, // call 'subtract' function from notifier
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {}, // call 'add' function from notifier
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Text(
          // put your reference to the provider here - don't forget to add .toString() on the end
          '',
          style: const TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
