// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'RainsPage.dart';
import 'AlertsPage.dart';
import 'FavoritesPage.dart';
import 'DrawerPage.dart';
import 'SearchPage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'getLocation.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// trial comment 1

void main() {
  runApp(AppBase());
}

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Clima(),
    );
  }
}

class Clima extends StatefulWidget {
  @override
  State<Clima> createState() => _ClimaState();
}

class _ClimaState extends State<Clima> {
  int i = 0;
  @override
  void initState() {
    super.initState();
    Location().getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(),
      FavoritesPage(),
      SearchPage(),
      AlertsPage(),
      RainsPage(),
    ];
    Location().getData();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          color: Colors.white,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Clima',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Alerts',
            icon: Icon(
              Icons.add_alert,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            // Container(
            //   child: GestureDetector(d),
            // ),
            label: 'Rains',
            icon: Icon(
              // child: InkWell(
              //   onTap: () {},
              // ),
              Icons.beach_access,
              color: Colors.black,
            ),
          ),
        ],
        currentIndex: i,
        onTap: (int j) {
          setState(() {
            i = j;
          });
        },
      ),
    );
  }
}








































































































































































































