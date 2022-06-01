import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const TechBlogApp());

class TechBlogApp extends StatelessWidget {
  const TechBlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      // theme: ThemeData.dark().copyWith(
      //  scaffoldBackgroundColor: const Color(0xFF0A0E21),
      //  primaryColor: const Color(0xFF0A0E21),
      // ),
    );
  }
}
