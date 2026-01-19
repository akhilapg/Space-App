import 'package:flutter/material.dart';
import 'package:space_app/constant/solar_planet_details.dart';

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
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 40, top: 30),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    child: Icon(Icons.density_medium, color: Colors.white),
                  ),
                  Column(
                    children: [
                      Text(
                        "Milky Way",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Text(
                        "Solar System",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 20, top: 30),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
            ),

            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // itemCount: solar_planet_details["planet_names"].length,
                // itemExtentBuilder: (context,index) =>buildPlanets(index),
                children: [
                  // buildPlanets(index)
                  Container(
                    width: 150,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          solar_planet_details["planet_images"][0],
                          fit: BoxFit.fill,
                          width: 40,
                        ),
                        Text(
                          solar_planet_details["planet_names"][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          solar_planet_details["planet_images"][0],
                          fit: BoxFit.fill,
                          width: 40,
                        ),
                        Text(
                          solar_planet_details["planet_names"][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          solar_planet_details["planet_images"][0],
                          fit: BoxFit.fill,
                          width: 40,
                        ),
                        Text(
                          solar_planet_details["planet_names"][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          solar_planet_details["planet_images"][0],
                          fit: BoxFit.fill,
                          width: 40,
                        ),
                        Text(
                          solar_planet_details["planet_names"][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          solar_planet_details["planet_images"][0],
                          fit: BoxFit.fill,
                          width: 40,
                        ),
                        Text(
                          solar_planet_details["planet_names"][0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(5.0),
              width: 400,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  Text(
                    "Planet of the day",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage("assets/mars_image.png"),
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
                                color: Colors.white,
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
                            Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 10,
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(5.0),
              width: 400,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Column(
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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.language), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

// Widget buildPlanets(int index)
// {
//   return SizedBox(
//       width: double.infinity,
//       height: 100,
//       child: ListView(
//           scrollDirection: Axis.horizontal,
//         children: [
//     Container(
//     width: 150,
//     height: 10,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.black.withOpacity(0.3),
//     ),
//     child: Row(
//       children: [
//         Image.asset(
//           solar_planet_details["planet_images"][0],
//           fit: BoxFit.fill,
//           width: 40,
//         ),
//         Text(solar_planet_details["planet_names"][0],style: TextStyle(color: Colors.white),),
//       ],
//     ),
//     ),
//       ],
//   ),
//   );
// }
