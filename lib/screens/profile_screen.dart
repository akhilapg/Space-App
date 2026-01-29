import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/screens/appbar_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildCommonAppBar("profile"),
        body: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                width: width * 0.90,
                height: 120,
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
                          "Space adventurer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.edit, color: Colors.white, size: 30),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: width * 0.90,
              height: height * 0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.transparent.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  Row(children: []),
                  SizedBox(height: 50,),
                  SizedBox(
                     width: 250,
                     height: 250, child: Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 250,
                            height: 250,
                            child: CircularProgressIndicator(strokeWidth: 20,value: 0.2,backgroundColor: Colors.blue,),
                          ),
                        ),
                        Positioned(top: 30 ,left: 80,child: Text("Personal\nProgress",style: TextStyle(color: Colors.white,fontSize: 20),),)
                   ,                        Center(child: Text("87.1%",style: TextStyle(color: Colors.white,fontSize: 50),),)
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
