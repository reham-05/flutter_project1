import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text("Profile",),
      ), flexibleSpace: Stack(children: [
        Container(

          decoration: BoxDecoration(
              image: DecorationImage(

                  image: AssetImage("assets/images/circleB.png"),alignment: AlignmentGeometry.topEnd),
              gradient: LinearGradient(colors: [
                Color(0xff1C3877),
                Color(0xff1C3877).withValues(alpha: .8)
              ],begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
              )),
        ),
        Container(
            height: 144,
            decoration: BoxDecoration(
              image: DecorationImage(

                  image: AssetImage("assets/images/circleS.png"),alignment: AlignmentGeometry.topEnd),))
      ],),
      ),
    );
  }
}