import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Country {
  final String name;
  final String capital;

  Country({required this.name, required this.capital});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListView Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Country> _countries = [
    Country(name: 'USA', capital: 'Washington D.C.'),
    Country(name: 'Canada', capital: 'Ottawa'),
    Country(name: 'India', capital: 'New Delhi'),
    Country(name: 'Australia', capital: 'Canberra'),
    Country(name: 'Germany', capital: 'Berlin'),
    // Add more countries as needed
  ];

  List<Country> _filteredCountries = [];

  @override
  void initState() {
    super.initState();
    _filteredCountries.addAll(_countries);
  }

  void _filter(String query) {
    setState(() {
      _filteredCountries = _countries.where((country) => country.name.toLowerCase().contains(query.toLowerCase()) ||
          country.capital.toLowerCase().contains(query.toLowerCase())).toList();
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filter,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCountries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredCountries[index].name),
                  subtitle: Text('Capital: ${_filteredCountries[index].capital}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
