import 'package:flutter/material.dart';
import 'package:space_app/constant/app_images.dart';
import 'package:space_app/screens/favorites_screen.dart';
import 'package:space_app/screens/home_screen.dart';
import 'package:space_app/screens/profile_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> screens = [HomeScreen(), FavoritesScreen(), ProfileScreen()];
  int currentIndex = 1;

  //curren
  //when button clikc time varible can update to the value but if ui need to rebuild then widget build is need calling
  @override
  Widget build(BuildContext context) {
    // this line code need to recall when user click
    //when a user clikc the 2 button current index varibale getting update to 2
    print("when relaod time this calling $currentIndex index");
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.app_background_image),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0).withOpacity(0.1),
        body: screens[currentIndex], //currenmt index =1
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Colors.black),
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              build_bottom_navigation(
                "Home",
                0,
                currentIndex,
                Icons.language,
                action: () {
                  setState(() {});
                  currentIndex = 0;
                },
              ),
              build_bottom_navigation(
                "Favorites",
                1,
                currentIndex,
                Icons.favorite,
                action: () {
                  setState(() {});
                  currentIndex = 1;
                },
              ),
              build_bottom_navigation(
                "Profile",
                2,
                currentIndex,
                Icons.person,
                action: () {
                  setState(() {});
                  currentIndex = 2;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names  //index is constant  but current index
Widget build_bottom_navigation(
  String title,
  int index,
  int currentIndex,
  IconData icon, {
  required VoidCallback action,
}) {
  return InkWell(
    onTap: action,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //currentindx currnt value 1 index value ofcousre 1 then
        Icon(
          icon,
          color: currentIndex == index ? Colors.blue : Colors.white,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(
            color: currentIndex == index ? Colors.blue : Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
