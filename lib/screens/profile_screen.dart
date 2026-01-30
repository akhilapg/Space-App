import 'package:flutter/material.dart';
import 'package:space_app/screens/appbar_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildCommonAppbar("profile"),
        body: Column(children: [
          SizedBox(height: 30,),
          // Padding(padding: padding)
        ],),
      ),
    );
  }
}


