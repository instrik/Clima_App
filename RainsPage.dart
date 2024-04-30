// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:clima/getLocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RainsPage extends StatefulWidget {
  @override
  State<RainsPage> createState() => _RainsPageState();
}

class _RainsPageState extends State<RainsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: true
          ? Center(
              child: SpinKitRotatingCircle(
                color: Colors.white,
                size: 50.0,
              ),
            )
          : Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
                child: Text(
                  'Rains Page',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );
  }
}
