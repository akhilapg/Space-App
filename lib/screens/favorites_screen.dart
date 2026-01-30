import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/constant/solar_planet_details.dart';
import 'package:space_app/screens/appbar_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.black.withOpacity(0.3),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildCommonAppbar("favorites"),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              buildPlanets(0),
              SizedBox(height: 10),

              buildPlanets(1),
              SizedBox(height: 10),

              buildPlanets(2),
              SizedBox(height: 10),

              buildPlanets(3),
              SizedBox(height: 10),

              buildPlanets(4),
              SizedBox(height: 10),

              buildPlanets(5),
              SizedBox(height: 10),

              buildPlanets(6),
              SizedBox(height: 10),

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
    padding: EdgeInsets.all(20.0),
    width: 200,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black.withOpacity(0.3),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          solar_planet_details["planet_images"][index],
          fit: BoxFit.contain,
          width: 40,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                solar_planet_details["planet_names"][index],
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),


              SizedBox(height: 5,),
              Text(
                // maxLines: 3,
                textAlign: TextAlign.start,
                solar_planet_details["planet_description"][index],
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(height: 10),
              SizedBox(width: 10),

              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Details ->",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 10,
          ),
        ),
      ],
    ),
  );
}
