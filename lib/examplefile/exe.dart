import 'package:flutter/material.dart';
// rage filtter
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
  RangeValues _priceRange = RangeValues(0, 100); // Initial price range

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Price Filter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Price Range: \$${_priceRange.start.round()} - \$${_priceRange.end.round()}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            RangeSlider(
              values: _priceRange,
              min: 0,
              max: 100,
              onChanged: (RangeValues values) {
                setState(() {
                  _priceRange = values;
                });
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform filtering based on the selected price range
                print('Filtering prices from ${_priceRange.start} to ${_priceRange.end}');
              },
              child: Text('Apply Filter'),
            ),
          ],
        ),
      ),
    );
  }
}

//
