import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main App Bar'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('First App Bar'),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        // Add your settings action here
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Rest of your content goes here
            // ...
          ],
        ),
      ),
    );
  }
}
