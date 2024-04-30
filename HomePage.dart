// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool l = false;
  List<String> cities = [
    'Dehradun',
    'New Delhi',
    'Prayagraj',
    'Bareilly',
    'Azamgarh',
    'Mumbai',
    'Amritsar',
    'Katra',
    'Kolkata',
    'Haridwar',
    'Pondicherry',
    'Chennai',
    'Pune',
    'Hyderabad',
    'Bengaluru',
    'Gangtok',
    'Raipur',
    'Lucknow',
    'Noida',
    'Gaziabad',
    'Gurgaon',
    'Amdavad',
    'Surat',
    'Vadodara',
    'Gandhinagar',
    'Chandigarh',
    'Shimla',
    'Srinagar',
    'Mussorie',
  ];

  @override
  Widget build(BuildContext context) {
    return columnTrial();
  }

  dynamic columnTrial() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return Text(cities[index]);
              }
              // child: ListView(
              //   // itemExtent: 2,
              //   children: [
              //     ListTile(
              //       leading: CircleAvatar(
              //         backgroundColor: Colors.black,
              //         child: IconButton(
              //           onPressed: () {},
              //           icon: Icon(
              //             Icons.add,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //       title: Text(
              //         cities[1].toString(),
              //       ),
              //       subtitle: Text('hill station'),
              //       trailing: Text('sunny'),
              //       onTap: () {},
              //       tileColor: Colors.yellowAccent,
              //     ),
              //     //MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
              //   ],
              // ),
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8),
            //   child: SizedBox(
            //     height: 45,
            //     width: 100,
            //     child: FloatingActionButton.extended(
            //       heroTag: null,
            //       backgroundColor: Colors.black,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(90),
            //       ),
            //       label: Text(
            //         'trial',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onPressed: () {
            //         Navigator.of(context).push(
            //           MaterialPageRoute(
            //             builder: (BuildContext context) {
            //               return RainsPage();
            //             },
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: l == false
                  ? SizedBox(
                      height: 45,
                      width: 100,
                      child: FloatingActionButton.extended(
                        heroTag: null,
                        backgroundColor: Colors.black,
                        splashColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        icon: Icon(
                          Icons.circle_outlined,
                          color: Colors.red,
                          size: 15,
                        ),
                        label: Text(
                          ' LIVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            l = true;
                            print('5');
                          });
                        },
                      ),
                    )
                  : SizedBox(
                      height: 45,
                      width: 100,
                      child: FloatingActionButton.extended(
                        heroTag: null,
                        backgroundColor: Colors.black,
                        splashColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        icon: Icon(
                          Icons.circle,
                          color: Colors.red,
                          size: 15,
                        ),
                        label: Text(
                          ' LIVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            l = false;
                            print('0');
                          });
                        },
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
