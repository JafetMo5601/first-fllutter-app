import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App!'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open the app!'),
          onPressed: () {},
        ),
      ),
    );
  }
}