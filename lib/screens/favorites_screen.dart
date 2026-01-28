import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/screens/appbar_screen.dart';

import '../constant/solar_planet_details.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      width: 600,
      height: double.infinity,
      decoration: BoxDecoration(

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildCommonAppBar("favorites"),
        body: Padding(//parent child relationship
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              buildPlanets(0),
              SizedBox(height: 10,),
              buildPlanets(1),
              SizedBox(height: 10,),
              buildPlanets(2),
              SizedBox(height: 10,),

              buildPlanets(3),
              SizedBox(height: 10,),

              buildPlanets(4),
              SizedBox(height: 10,),

              buildPlanets(5),
              SizedBox(height: 10,),

              buildPlanets(6),
              SizedBox(height: 10,),

              buildPlanets(7),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildPlanets(int index) {
  return Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black.withOpacity(0.3),
    ),
    child: Row(
      children: [
        Image.asset(
          solar_planet_details["planet_images"][index],
          fit: BoxFit.contain,
          width: 40,
        ),
        Text(
          solar_planet_details["planet_names"][index],
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
