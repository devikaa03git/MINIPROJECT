import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCVPage(),
    );
  }
}

class MyCVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My CV'),
        backgroundColor: Colors.lightBlue, // Set light blue color
        actions: [
          TextButton(
            onPressed: () {
              // Handle View CV action
              print('View CV pressed');
            },
            child: Text(
              'View CV',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CHOOSE THE TEMPLATE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlaceholderWidget(),
                PlaceholderWidget(),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlaceholderWidget(),
                PlaceholderWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.grey[300],
      child: Center(
        child: Text(
          'Placeholder',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
