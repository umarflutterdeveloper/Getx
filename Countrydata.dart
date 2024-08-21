import 'dart:convert';
import 'package:flutter/material.dart';
import 'models/continent_model.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContinentListScreen(),
    );
  }
}

class ApiService {
  final String baseUrl = 'https://dummy-json.mock.beeceptor.com';

  Future<List<Continent>> fetchContinents() async {
    final response = await http.get(Uri.parse('$baseUrl/continents'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Continent.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load continents');
    }
  }
}

class ContinentListScreen extends StatefulWidget {
  @override
  _ContinentListScreenState createState() => _ContinentListScreenState();
}

class _ContinentListScreenState extends State<ContinentListScreen> {
  late Future<List<Continent>> futureContinents;

  @override
  void initState() {
    super.initState();
    futureContinents = ApiService().fetchContinents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          'Continents',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            FutureBuilder<List<Continent>>(
              future: futureContinents,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No data available'));
                } else {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                                child: Text(
                              'Continents list with their properties',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 500,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              Continent continent = snapshot.data![index];
                              return Container(
                                child: Column(
                                  children: [
                                    Text('Continent Names${continent.name}'),
                                    Text('Continent Codes${continent.code}'),
                                    Text('Countries${continent.countries}'),
                                    Text('${continent.areaSqKm}'),
                                    Text('Population${continent.population}'),
                                    Text('${continent.lines}'),
                                    Text(
                                        'Developed Countries${continent.developedCountries}'),
                                    Text('Oceans${continent.oceans}'),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            'Thanks for visit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
