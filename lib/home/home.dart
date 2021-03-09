import 'package:flutter/material.dart';
import 'package:flowbuilder_test/navigation/navbar/navbar.dart';

class Home extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: Home());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: const Center(
          child:
              Text('Home', style: TextStyle(fontSize: 40, color: Colors.red))),
    );
  }
}
