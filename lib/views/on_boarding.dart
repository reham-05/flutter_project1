import 'dart:math';

import 'package:app22/core/helper_method.dart';
import 'package:app22/views/login.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget{
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}
class _OnBoardingViewState extends State<OnBoardingView> {
  final images=["assets/images/on_boarding1.jpg",
               "assets/images/on_boarding2.jpg",
               "assets/images/on_boarding3.jpg"];

  final text=["Move Every shipment",
               "Track in Real-Time",
               "Track in Real-Time"];

  final text2 =["With Confidence",
                "Stay in Control",
               "Stay in Control"];

  int currentpage=0;
  final controller= PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          PageView(
            controller: controller,
            onPageChanged: (value) {
              currentpage=value;
              setState(() {

              });
            },
            children: [
            Image.asset("assets/images/on_boarding1.jpg",height: double.infinity,fit: BoxFit.fill,),
            Image.asset("assets/images/onboarding2.jpg", height: double.infinity,fit: BoxFit.fill,),
            Image.asset("assets/images/onboarding3.jpg",height: double.infinity,fit: BoxFit.fill,),],),
          IgnorePointer(
            ignoring: true,
            child: Container(width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(gradient: LinearGradient(
                colors: [Colors.black.withValues(alpha: 0),Colors.black.withValues(alpha: .5)],
                begin: AlignmentGeometry.center,
            end: AlignmentGeometry.bottomCenter),
            
            )),
          ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(3, (index) => Padding(
              padding: EdgeInsetsGeometry.directional(end: index==2?0:34),
              child: Transform.rotate(
                angle:index==currentpage? pi/4:0,
                child: Container(width: 9,height: 9, decoration: BoxDecoration(
                    color:index==currentpage? Colors.white:Colors.transparent,borderRadius: BorderRadius.circular(2),
                   border: Border.all(color: Colors.white)),),),
            ),)
        ),

            SizedBox(height: 30,),
            Text(text[currentpage],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
            SizedBox(height: 4,),
            Text(text2[currentpage],style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.white),),
            SizedBox(height: 15,),
            Container(
              width: 80,
                height: 80,

                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(color: Colors.white.withValues(alpha: .10),borderRadius: BorderRadius.circular(20),
                    boxShadow:[BoxShadow(
                      offset: Offset(0, 3),
                      color: Colors.white.withValues(alpha: .25),
                      blurRadius: 4,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.inner
                    ),BoxShadow(offset: Offset(0, -3),
                      color: Color(0xff000000).withValues(alpha: .25),
                      blurRadius: 4,
                      spreadRadius: 0,
                    blurStyle: BlurStyle.inner,)],
                    ),

                child: Container(
                    width: 61,
                    height: 61,

                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                    boxShadow: [BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.white.withValues(alpha: .25),
                        blurRadius: 4,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.inner),
                      BoxShadow(offset: Offset(0, -2),
                          color: Color(0xff428183).withValues(alpha: .64),
                          blurRadius: 4,
                          spreadRadius: 0,
                          blurStyle: BlurStyle.inner)]) ,
                    child: FloatingActionButton(onPressed: (){
                      setState(() {
                        if(currentpage<images.length-1){
                          currentpage++;
                        }else{
                          goto(page: LoginView(),keepHistory: false);
                        }
                      });
                      controller.animateToPage(currentpage, duration: Duration(milliseconds: 400), curve: Curves.linear);
                      setState(() {

                      });
                    }

                    ,child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,),
                      backgroundColor: Color(0xff2563EB),elevation: 0,
                    ))),
                       SizedBox(height: 60,)

        ],)


        ],));
  }
}