import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    // Add a listener to the FocusNode to detect focus changes
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        print('TextField is activated');
      } else {
        print('TextField is deactivated');
      }
    });
  }

  @override
  void dispose() {
    // Dispose of the FocusNode when it's no longer needed
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Activation Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              labelText: 'Enter text',
              hintText: 'Type something',
            ),
          ),
        ),
      ),
    );
  }
}
