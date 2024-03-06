import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  // initial state
  bool switchStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.lightbulb,
              size: 200,
              color: switchStatus ? Colors.amber : Colors.grey,
            ),

            // ? :
            Switch(
                value: switchStatus,
                onChanged: (bool isChecked) {
                  setState(() {
                    switchStatus = isChecked;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
