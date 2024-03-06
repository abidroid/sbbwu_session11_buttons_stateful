import 'package:flutter/material.dart';

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
                  onPressed: () {},
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
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
              label: const Text('Send'))
        ],
      ),
    );
  }
}
