// ignore_for_file: prefer_const_constructors

import 'package:clima/DrawerPage.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Location {
  static double latitude = 0, longitude = 0;
  final String key = 'b88705431322742c3310ab889a1501ae';
  Future<void> getCurrentLocation() async {
    Position? position;
    try {
      position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      print('error in getting the position co-ordinates');
    }
    print(position);
    latitude = position?.latitude ?? 0;
    longitude = position?.longitude ?? 0;
    print(latitude);
    print(longitude);
  }

  void getData() async {
    http.Response response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$key', // assign variables to key, lat, lon
      ),
    );
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      // var weatherDescription =
      //     jsonDecode(response.body)['weather'][0]['description'];
      var weatherDescription = decodedData['weather'][0]['description'];
      print(weatherDescription);

      // print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}

class Animation extends StatefulWidget {
  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  var spinkit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
