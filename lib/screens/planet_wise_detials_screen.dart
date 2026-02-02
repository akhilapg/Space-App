import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/constant/solar_planet_details.dart';

class PlanetWiseDetialsScreen extends StatefulWidget {
  const PlanetWiseDetialsScreen({super.key});

  @override
  State<PlanetWiseDetialsScreen> createState() =>
      _PlanetWiseDetialsScreenState();
}

class _PlanetWiseDetialsScreenState extends State<PlanetWiseDetialsScreen> {
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
                width: MediaQuery.of(context).size.width*0.99,
                height: 554,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
              ),
            ),
            Positioned(top: 300,left: 125,child: Image.asset(solar_planet_details["planet_images"][0],width: 150,height: 150,fit: BoxFit.fill,))
          ],
        ),
      ),
    );
  }
}
  