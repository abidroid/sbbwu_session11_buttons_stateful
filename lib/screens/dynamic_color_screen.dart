import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DynamicColorScreen extends StatefulWidget {
  const DynamicColorScreen({super.key});

  @override
  State<DynamicColorScreen> createState() => _DynamicColorScreenState();
}

class _DynamicColorScreenState extends State<DynamicColorScreen> {

  // variable
  // data type ?

  // initial state
  Color wallColor = Colors.pink;

  // 60 frames per second
  // 120 frames per second

  @override
  Widget build(BuildContext context) {
    print('build executed');
    return Scaffold(

      backgroundColor: wallColor,

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Dynamic Colors'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {

                setState(() {
                  wallColor = Colors.red;

                });
              },
              child: const Text(
                'Red',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  wallColor = Colors.green;

                });
              },
              child: const Text(
                'Green',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Gap(20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  wallColor = Colors.blue;

                });
              },
              child: const Text(
                'Blue',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
