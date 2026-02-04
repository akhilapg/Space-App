import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/constant/solar_planet_details.dart';
import 'package:space_app/screens/home_screen.dart';

class PlanetWiseDetailsScreen extends StatefulWidget {
  const PlanetWiseDetailsScreen({super.key});

  @override
  State<PlanetWiseDetailsScreen> createState() =>
      _PlanetWiseDetailsScreenState();
}

class _PlanetWiseDetailsScreenState extends State<PlanetWiseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.inner_page_image),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 30,
              child: Container(
                // margin: EdgeInsets.only(left: 40, top: 30),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Icon(Icons.arrow_back_rounded, color: Colors.white),
              ),
            ),
            Positioned(
              top: 20,
              right: 30,
              child: Container(
                // margin: EdgeInsets.only(left: 40, top: 30),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.99,
                height: 554,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 100,
              child: Image.asset(
                solar_planet_details["planet_images"][0],
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 260,
              left: 135,
              child: Text(
                solar_planet_details["planet_names"][0],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            // SizedBox(height: 10,),
            Positioned(
              top: 300,
              left: 15,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      planetDetails(
                        Icons.card_travel,
                        "    Mass\n(10^24kg)",
                        "5.97",
                      ),
                      planetDetails(Icons.grade, "Gravity\nm/s^2", "9.8"),
                      planetDetails(Icons.sunny, "   Day\n(Hours)", "24"),
                    ],
                  ),
                  SizedBox(height: 30,),
                  // Positioned(
                  //   top: 400,
                  //   left: 30,
                  //   child:
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        planetDetails(
                          Icons.rocket_launch,
                          "Esc.Velocity\n   (km/s)",
                          "11.2",
                        ),
                        planetDetails(Icons.thermostat, "  Mean\nTemp(C)", "15"),
                        planetDetails(Icons.social_distance, "Distance from\n  Sun(106km)","5.97"),
                      ],
                    ),
                  // ),

                  // ElevatedButton(child: ,
                  // style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.cyan,
                  //     minimumSize: Size(100, 100),
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20))),
                  // onPressed: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomeScreen()),
                  //       child:(child: Center(child: Text("Visit"),)));
                  // }
                  //     ),
                  SizedBox(height: 50,),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Visit",
                          style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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

Widget planetDetails(IconData icon, String text, String value) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(icon, size: 35, color: Colors.white),
                    Text(
                      text,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      value,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
