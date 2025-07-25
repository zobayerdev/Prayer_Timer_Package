import 'package:flutter/material.dart';
import 'package:prayer_timer/prayer_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('নামাজের সময় টাইমার'),
          centerTitle: true,
        ),
        body: PrayerTimer(
          apiUrl:
          'https://api.aladhan.com/v1/timingsByCity?city=Dhaka&country=Bangladesh&method=2',
          city: 'Dhaka',
          country: 'Bangladesh',
          method: 2,
          progressBarSize: 150.0,
          progressBarColor: Colors.blueAccent,
          progressBarBackgroundColor: Colors.grey.shade200,
          fontColor: Colors.blueAccent,
          fontName: 'Hind Siliguri',
          containerHeight: '250', // Custom font color
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}