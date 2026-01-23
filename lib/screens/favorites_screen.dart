import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                // decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(8),
                  // image: DecorationImage(
                  //   image: AssetImage(AppImages.
                      // solar_planet_details['planet_images'][1],

                    // ),
                    // fit: BoxFit.cover,
                  // ),
                // ),
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

    );
  }
}