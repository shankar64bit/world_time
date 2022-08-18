// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('HOME'),
        centerTitle: true,
        primary: true,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Button for Location
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: const Icon(Icons.edit_location),
            label: const Text('Find Location'),
            color: Colors.white,
          ),
          // Button for Load page again
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/idcard');
            },
            icon: const Icon(Icons.card_membership),
            label: const Text('ID Cards'),
            color: Colors.white,
          ),
          // Button for Load Refresh
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Goto START'),
            color: Colors.white,
          )
        ],
      )),
    );
  }
}
