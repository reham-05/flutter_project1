import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Text("Trip",),
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
                    image: AssetImage("assets/images/circleS.png"),alignment: AlignmentGeometry.topEnd),)),
       ],
        ),
        ),
      body:  TextFormField(decoration: InputDecoration(hint: Row(
        children: [
          Text("search"),
          SvgPicture.asset("assets/icons/Search.svg"),
        ],
      ),)),
    );
  }
}
