import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const router = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
