import 'package:flutter/material.dart';

class DynamicScreenOne extends StatefulWidget {
  const DynamicScreenOne({super.key});

  @override
  State<DynamicScreenOne> createState() => _DynamicScreenOneState();
}

class _DynamicScreenOneState extends State<DynamicScreenOne> {

  // initial state
  String message = 'Pa Khair World';

  @override
  Widget build(BuildContext context) {
    print('build executed');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:  Text(message),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              message,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                // build to be executed again

                setState(() {
                  message = 'Flutter is Fun';

                });
              },
              child: const Text(
                'Change',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
