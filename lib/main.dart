import 'package:flutter/material.dart';
import 'package:sbbwu_session11_buttons_stateful/screens/button_screen.dart';
import 'package:sbbwu_session11_buttons_stateful/screens/dynamic_color_screen.dart';
import 'package:sbbwu_session11_buttons_stateful/screens/dynamic_screen_one.dart';
import 'package:sbbwu_session11_buttons_stateful/screens/radio_button_screen.dart';
import 'package:sbbwu_session11_buttons_stateful/screens/switch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const RadioButtonScreen(),
    );
  }
}
