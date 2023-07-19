import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/numbers_provider.dart';

void main() {
  runApp(
    // add ProviderScope
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

// make this a ConsumerStatefulWidget
class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  // make this ConsumerState<MyApp>
  ConsumerState<MyApp> createState() => _MyAppState();
}

// make this ConsumerState<MyApp>
class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    // add reference to provider state
    final number = ref.watch(numberProvider);
    // add reference to notifier in order to access functions
    final provider = ref.watch(numberProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Example'),
        actions: [
          IconButton(
            onPressed: provider.reset, // call 'subtract' function from notifier
            icon: const Icon(Icons.restart_alt_rounded),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed:
                provider.subtract, // call 'subtract' function from notifier
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: provider.add, // call 'add' function from notifier
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Text(
          // put your reference to the provider here - don't forget to add .toString() on the end
          number.toString(),
          style: const TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
