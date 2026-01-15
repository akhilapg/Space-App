import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // return Container(
    //   width: width,
    //   height: height,
    //   decoration: BoxDecoration(
    //     image: DecorationImage(image: AssetImage(AppImages.app_background_image),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: Stack(
    //       children: [Image.asset(AppImages.login_image)
    //       ],
    //     )
    //     // Column(
    //     //   children: [
    //     //     Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
    //     //   ],
    //     // )
    //   ),
    // );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.app_background_image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Image.asset(AppImages.login_image, height: 80),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              inputField(hint: "Email", icon: Icons.email),
              SizedBox(height: 10),
              inputField(hint: "Password", icon: Icons.lock, isPassword: true),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.cyanAccent),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.cyan,
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("or sign in using", style: TextStyle(color: Colors.white)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialIcons(AppImages.twittter_img),
                  socialIcons(AppImages.facebook_img),
                  socialIcons(AppImages.google_img),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget inputField({
  required String hint,
  required IconData icon,
  bool isPassword = false,
}) {
  return TextField(
    obscureText: isPassword,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white70),
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white54),
      filled: true,
      fillColor: Colors.black,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.cyan),
      ),
    ),
  );
}

Widget socialIcons(String image) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 25),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    child: Image.asset(image, height: 25, width: 25),
  );
}
