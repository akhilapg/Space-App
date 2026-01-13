import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.app_background_image),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Column(
          children: [
            Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
          ],
        )

      ),
    );
  }
}
