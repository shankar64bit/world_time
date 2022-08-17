import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[0],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Loading'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(child: Text('welcome page')),
    );
  }
}
