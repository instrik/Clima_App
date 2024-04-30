// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  bool favorite1 = false, favorite2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              title: Text(
                'Dehradun',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'hill station',
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                  icon: favorite1
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                  onPressed: () {
                    setState(() {
                      favorite1 = !favorite1;
                    });
                  }),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              title: Text(
                'New Delhi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'capital city',
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: favorite2
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                      ),
                onPressed: () {
                  setState(() {
                    favorite2 = !favorite2;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
