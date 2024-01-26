import 'package:flutter/material.dart';
import 'package:tap_animator/tap_animator.dart';


void main() => runApp(const OutlinedButtonExampleApp());

class OutlinedButtonExampleApp extends StatelessWidget {
  const OutlinedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TapAnimator Example')),
        body: const Center(
          child: TapAnimatorExample(),
        ),
      ),
    );
  }
}

class TapAnimatorExample extends StatelessWidget {
  const TapAnimatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TapAnimator(
          child: FilledButton(
            onPressed: () {
              debugPrint('Received click');
            },
            child: const Text('Click Me'),
          ),
        ),
        const SizedBox(height: 10),
        TapAnimator(
          child: OutlinedButton(
            onPressed: () {
              debugPrint('Received click');
            },
            child: const Text('Click Me'),
          ),
        ),
        const SizedBox(height: 10),
        TapAnimator(
          child: ElevatedButton(
            onPressed: () {
              debugPrint('Received click');
            },
            child: const Text('Click Me'),
          ),
        ),
        const SizedBox(height: 10),
        TapAnimator(
          duration: const Duration(milliseconds: 250),
          child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red),
                  color: Colors.redAccent),
              child: const Center(
                child: Text(
                  'Click Me',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}
