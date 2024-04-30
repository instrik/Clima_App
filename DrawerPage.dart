// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'getLocation.dart';
import 'package:http/http.dart';

Location location = Location();

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => DrawerPageState();
}

class DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Aakash Agarwal'),
            accountEmail: Text('agarwal7409@gmail.com'),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage('images/photo.jpg'),
            ),
// decoration: (),
          ),
// DrawerHeader(
//   padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//   child: Container(
//     margin: EdgeInsets.all(0),
//     color: Colors.yellow,
//   ),
// ),
          FloatingActionButton.extended(
            heroTag: null,
            backgroundColor: Colors.white,
            splashColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90),
            ),
            icon: Icon(
              Icons.circle_outlined,
              color: Colors.red,
            ),
            label: Text(
              'Locate',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () async {
              print('button pressed');
              await location.getCurrentLocation();
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
