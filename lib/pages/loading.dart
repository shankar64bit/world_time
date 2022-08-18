import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('START'),
        centerTitle: true,
        elevation: 0,
      ),
      // Body content starts from here
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Button for Location and text
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(Icons.home),
            label: const Text(
              'START Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      )),
    );
  }
}
