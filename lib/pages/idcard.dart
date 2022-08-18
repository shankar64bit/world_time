// ignore_for_file: prefer_const_constructors changed

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ark(),
    ));

// ignore: camel_case_types, use_key_in_widget_constructors
class ark extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _arkState createState() => _arkState();
}

// ignore: camel_case_types
class _arkState extends State<ark> {
  int idlevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[900], // Color that captures the body > befor app bar
      appBar: AppBar(
        title: Text('ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            idlevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            //Profile pic elements ends here
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Shankar',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'ID Number',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '$idlevel',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            //creating a row after all the ID details are given
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'naturalstar28@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// statefull widget starts from here
