import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/screens/appbar_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildCommonAppbar("profile"),
        body: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: width * 0.90,
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.profile_image, fit: BoxFit.fill),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Arthur Dent",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Space Adventurer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.edit, color: Colors.white, size: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: width * 0.90,
              height: height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.transparent.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          // activeThumbColor: Colors.cyanAccent,
                          activeTrackColor: Colors.cyan,
                        ),
                        Text(
                          "Show planetary progress",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Stack(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 200,
                                  height: 200,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 20,
                                    value: 0.2,
                                    backgroundColor: Colors.blue,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                left: 70,
                                child: Text(
                                  "Personal\nProgress",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Center(
                                child: Text(
                                  "87.1%",
                                  style: TextStyle(
                                    color: Color(0XFF9FA8DA),
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Checkbox(
                          tristate: true,
                          value: value,
                          onChanged: (bool? newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.black87,
                          checkColor: Colors.cyan,
                        ),
                        Text(
                          "Show me in planet rating",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        ],
                    ),
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: value,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  value = newValue;
                                });
                              },
                              activeColor: Colors.black87,
                              checkColor: Colors.cyan,
                            ),
                        Text(
                          "Notifications",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                            ],
                        ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
