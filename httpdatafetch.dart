import 'package:flutter/material.dart';

import 'models/weather.dart';
import 'models/weather_api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = "Lahore";
  late Future<Weather> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = WeatherApiService().fetchWeather(city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Center(
        child: FutureBuilder<Weather>(
          future: futureWeather,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData) {
              return Text('No weather data found');
            } else {
              final weather = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ID: ${weather.id}'),
                  Text('Description: ${weather.description}'),
                  Text('Speed: ${weather.speed}m/s'),
                  Text('Deg: ${weather.deg}Cal'),
                  Text('Temperature: ${weather.temperature}°C'),
                  Text('Pressure: ${weather.pressure} hPa'),
                  Text('Sunrise: ${weather.sunrise}'),
                  Text('TimezoneId: ${weather.timezoneid}'),
                  Text('Humidity: ${weather.humidity}%'),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
