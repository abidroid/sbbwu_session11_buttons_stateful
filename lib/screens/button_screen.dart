import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Session 11'),
      ),
      body: Column(
        children: [
          SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    print('User will be logged in ');
                  },
                  child: const Text('Login'))),
          TextButton(onPressed: () {}, child: const Text('Sign Up')),
          OutlinedButton(onPressed: () {}, child: const Text('Submit')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Go to Cart')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              label: const Text('Delete')),
          OutlinedButton.icon(
              onPressed: sendMessage,
              icon: const Icon(Icons.arrow_forward_ios),
              label: const Text('Send')),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.pink,
                    Colors.purple,
                  ])),
              child: const Text(
                'Call',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.pink,
                    Colors.purple,
                  ])),
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Gap(20),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(
                  msg: 'Data will be deleted',
                  fontSize: 30,
                  backgroundColor: Colors.red);
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(colors: [
                    Colors.pink,
                    Colors.purple,
                  ])),
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  sendMessage() {
    print('hi');
  }
}
