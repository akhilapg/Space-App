import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.app_background_image),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(child: Image.asset(AppImages.background_shadow)),
            Center(child: Image.asset(AppImages.circular_rounded)),
            Center(child: Image.asset(AppImages.app_logo)),

            Center(child: Image.asset(AppImages.white_circular)),
          ],
        ),
        resizeToAvoidBottomInset: true,
        primary: true,
      ),
    );
  }
}
