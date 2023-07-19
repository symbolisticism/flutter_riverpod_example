import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/numbers_provider.dart';

void main() {
  runApp(
    // add ProviderScope
    MaterialApp(
        home: const MyApp(),
        theme: ThemeData.light(
          useMaterial3: true,
        ),
      ),
    ),
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    // add reference to provider state
    // add reference to notifier in order to access functions
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Example'),
        actions: [
          IconButton(
            onPressed: // call 'subtract' function from notifier,
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: // call 'add' function from notifier,
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Text(
          // put your reference to the provider here - don't forget to add .toString() on the end,
          style: const TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
