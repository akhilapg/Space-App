import 'package:flutter/material.dart';

PreferredSize buildCommonAppBar(){
  return  PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          border: Border(
            bottom: BorderSide(color: Colors.black, width: 1.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 40, top: 30),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.transparent,
                border: Border.all(color: Colors.black26, width: 2.0),
              ),
              child: Icon(Icons.density_medium, color: Colors.white),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Milky Way",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Text(
                  "Solar System",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              // margin: EdgeInsets.only(left: 20, top: 30),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.transparent,
                border: Border.all(color: Colors.black26, width: 2.0),
              ),
              child: Icon(Icons.account_circle, color: Colors.white),
            ),
          ],
        ),
      ),

      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
    ),
  );
}