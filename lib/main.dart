import 'package:flutter/material.dart';

void main() {
  runApp(ButtonDesignApp());
}

class ButtonDesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Designs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonDesignPage(),
    );
  }
}

class ButtonDesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Designs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Button 1 action
              },
              child: Text('Button 1'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                // Button 2 action
              },
              icon: Icon(Icons.send),
              label: Text('Button 2'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Button 3 action
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              ),
              child: Text('Button 3'),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Button 4 action
              },
              style: TextButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.all(16.0),
              ),
              child: Text('Button 4'),
            ),
            SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () {
                // Button 5 action
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              ),
              child: Text('Button 5'),
            ),
          ],
        ),
      ),
    );
  }
}
