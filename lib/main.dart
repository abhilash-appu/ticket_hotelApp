import 'package:flutter/material.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'screens/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter sample",
      theme: ThemeData(
        primaryColor: primary,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomBar(),
    );
  }
}
