import 'package:flutter/material.dart';
import 'package:mathspuzzle/second.dart';

void main() {
  runApp(MaterialApp(
    home: second(),
  ));
}

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/image/1.jpg"),
          ],
        ),
      ),
    );
  }
}
