import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {


  String selectedTrainer = 'Muhammad Abid';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Trainer Name'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 'Muhammad Abid',
                groupValue: selectedTrainer,
                onChanged: (value) {
                setState(() {
                  selectedTrainer = value!;
                });
                },
              ),
              const Text('Muhammad Abid')
            ],
          ),

          Row(
            children: [
              Radio(
                value: 'Kashif Ahmed',
                groupValue: selectedTrainer,
                onChanged: (value) {
                  setState(() {
                    selectedTrainer = value!;
                  });
                },
              ),
              const Text('Kashif Ahmed')
            ],
          ),

          Row(
            children: [
              Radio(
                value: 'Syeda Nayab',
                groupValue: selectedTrainer,
                onChanged: (value) {
                  setState(() {
                    selectedTrainer = value!;
                  });
                },
              ),
              const Text('Syeda Nayab')
            ],
          ),
        ],
      ),
    );
  }
}
