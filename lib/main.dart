import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/numbers_provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: const MyApp(),
        theme: ThemeData.light(
          useMaterial3: true,
        ),
      ),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final number = ref.watch(numberProvider);
    final provider = ref.watch(numberProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Example'),
        actions: [
          IconButton(
            onPressed: provider.subtract,
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: provider.add,
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
