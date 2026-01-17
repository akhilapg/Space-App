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
                      Text("Milky Way", style: TextStyle(color: Colors.white)),
                      Text(
                        "Solar System",
                        style: TextStyle(color: Colors.white),
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
            SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
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
                        Text(solar_planet_details["planet_names"][0],style: TextStyle(color: Colors.white),),
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
