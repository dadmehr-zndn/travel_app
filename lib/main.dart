// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/models/travel_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //todo: turn off const Ignor
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          titleSmall: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          labelMedium: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w100,
          ),
          labelSmall: TextStyle(
            color: Color(0xff78CADE),
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double imageListSize = size.height / 11.5;

    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          // * Top Part
          SizedBox(
            width: double.infinity,
            height: size.height / 1.9,
            child: Stack(
              children: [
                // Main Image
                Container(
                  alignment: Alignment.topCenter,
                  height: size.height / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(size.width / 6),
                      bottomRight: Radius.circular(size.width / 6),
                    ),
                    image: DecorationImage(
                      image: AssetImage(travelList[_selectedIndex].imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Appbar
                Positioned(
                  top: size.height / 45,
                  left: size.width / 25,
                  right: size.width / 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: ((size.height / 35) + (size.width / 23)) / 2,
                        backgroundColor: Colors.white.withOpacity(0.3),
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                      ),
                      CircleAvatar(
                        radius: ((size.height / 35) + (size.width / 23)) / 2,
                        backgroundColor: Colors.white.withOpacity(0.3),
                        child: Icon(
                          CupertinoIcons.heart,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                // Image List
                Positioned(
                  right: 0,
                  top: size.height / 10,
                  child: SizedBox(
                    height: double.maxFinite,
                    width: size.width / 4.5,
                    child: ListView.builder(
                      itemCount: travelList.length,
                      itemBuilder: (context, index) {
                        return makeImageItem(size, imageListSize, index);
                      },
                    ),
                  ),
                ),

                // Location
                Positioned(
                  bottom: size.height / 8,
                  left: size.width / 9.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Location Title
                      Text(
                        travelList[_selectedIndex].title,
                        style: textTheme.titleMedium,
                      ),

                      // More Location
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.placemark_fill,
                            color: Colors.white,
                          ),
                          Text(
                            travelList[_selectedIndex].location,
                            style: textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // * Bottom Part
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width / 10),
            child: SizedBox(
              width: double.infinity,
              height: size.height / 2.2,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Location Properties
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PropertyCard(
                                cardTitle: 'Distance',
                                givenValue: travelList[_selectedIndex].distance,
                                size: size,
                                textTheme: textTheme,
                                selectedIndex: _selectedIndex),
                            PropertyCard(
                                cardTitle: 'Temp',
                                givenValue: travelList[_selectedIndex].temp,
                                size: size,
                                textTheme: textTheme,
                                selectedIndex: _selectedIndex),
                            PropertyCard(
                                cardTitle: 'Rating',
                                givenValue: travelList[_selectedIndex].rating,
                                size: size,
                                textTheme: textTheme,
                                selectedIndex: _selectedIndex),
                          ],
                        ),

                        SizedBox(height: size.height / 30),

                        // Description
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Description', style: textTheme.displayMedium),
                            SizedBox(height: size.height / 95),
                            ExpandableText(
                              travelList[_selectedIndex].description,
                              expandText: 'Read more',
                              collapseText: 'collapse',
                              linkColor: Color(0xff78CADE),
                            ),
                          ],
                        ),

                        SizedBox(height: size.height / 20),

                        // Pricing
                      ],
                    ),
                  ),

                  //todo: bug here
                  Positioned(
                    bottom: 0,
                    width: size.width,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Totol Price
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Total Price'),
                              SizedBox(height: size.height / 95),
                              Text(
                                '\$ ${travelList[_selectedIndex].totalPrice}',
                                style: textTheme.displayLarge,
                              ),
                            ],
                          ),

                          SizedBox(width: size.width / 3),
                          // Next Button
                          CircleAvatar(
                            radius: size.height / 16,
                            backgroundColor: Colors.black,
                            child: Icon(
                              CupertinoIcons.forward,
                              color: Colors.white,
                              size: size.height / 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeImageItem(Size size, double imageListSize, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(size.height / 160),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width:
                  _selectedIndex == index ? imageListSize + 10 : imageListSize,
              height:
                  _selectedIndex == index ? imageListSize + 10 : imageListSize,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: size.height / 200,
                ),
                borderRadius: BorderRadius.circular(size.height / 55),
                image: DecorationImage(
                  image: AssetImage(travelList[index].imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PropertyCard extends StatelessWidget {
  const PropertyCard({
    super.key,
    required this.size,
    required this.textTheme,
    required int selectedIndex,
    required this.cardTitle,
    required this.givenValue,
  });

  final Size size;
  final TextTheme textTheme;
  final String cardTitle;
  final String givenValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(size.height / 35),
        side: BorderSide(color: Colors.grey, width: 0.7),
      ),
      child: Container(
        width: size.height / 7,
        height: size.height / 7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.height / 35),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              cardTitle,
              style: textTheme.labelMedium,
            ),
            Text(
              givenValue,
              style: textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
