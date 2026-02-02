import 'package:flutter/material.dart';
import 'package:space_app/constant/solar_planet_details.dart';
import 'package:space_app/screens/appbar_screen.dart';
import 'package:space_app/screens/planet_wise_detials_screen.dart';

import '../constant/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.app_background_image),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: buildCommonAppbar("solar"),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  buildPlanets(0,context),
                  SizedBox(width: 50),
                  buildPlanets(1,context),
                  SizedBox(width: 50),
                  buildPlanets(2,context),
                  SizedBox(width: 50),
                  buildPlanets(3,context),
                  SizedBox(width: 50),
                  buildPlanets(4,context),
                  SizedBox(width: 50),
                  buildPlanets(5,context),
                  SizedBox(width: 50),
                  buildPlanets(6,context),
                  SizedBox(width: 50),
                  buildPlanets(7,context),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(20.0),
              width: 320,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      "Planet of the day",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(
                              solar_planet_details['planet_images'][1],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                         Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mars",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyanAccent,
                              ),
                            ),
                            // SizedBox(height: 10),
                            Text(
                              "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury."
                              " In the English language, Mars is named for the Roman god of war.",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),

                            // Spacer(),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Details →",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(20.0),
              width: 320,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Solar system",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Row(
                  //   children: [
                  Text(
                    "The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. "
                    "It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. "
                    "The vast majority (99.86%) of the system's mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. "
                    "The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. "
                    "The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ",
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
       
      ),
    );
  }
}

// ignore: non_constant_identifier_names


Widget buildPlanets(int index,BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>PlanetWiseDetialsScreen()));
    },
    child: Container(
      width: 100,
      height: 40,
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
    ),
  );
}
