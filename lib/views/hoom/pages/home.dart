import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xff1C3877),
        flexibleSpace: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Background Graphic Elements (1).png"),alignment: AlignmentGeometry.bottomEnd),
                ),
          ),
          Container(
              height: 144,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Border (1).png"),alignment: AlignmentGeometry.bottomEnd)))
        ],),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        title: Padding(padding: EdgeInsetsGeometry.only(bottom: 5),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text("Good morning,",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
          subtitle: Text("Majed Abdullah",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
          leading: Badge(
            backgroundColor: Color(0xff16A34A),
            alignment: AlignmentGeometry.bottomStart,
            smallSize: 15,
            label: SizedBox(),
            offset: Offset(6, -6),
            child: DecoratedBox(decoration:BoxDecoration(shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE7EEFE),width: 5,strokeAlign: BorderSide.strokeAlignOutside)),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/man.png"),radius: 26,)),
          ),

        ),),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Current Trip",style: TextStyle(color: Color(0xff01031A),fontSize: 18,fontWeight: FontWeight.bold),),
          Container(height: 2,width: 60,
          decoration: BoxDecoration(gradient:LinearGradient(colors: [
            Color(0xff1C3877),
            Color(0xffF3F5F9)
          ],
          stops: [0.30,.98])),),
            SizedBox(height: 10,),
            
            Stack(children: [
              Image.asset("assets/images/Group 11.png",width: double.infinity,fit: BoxFit.cover,),
              
            Container(alignment: AlignmentGeometry.centerEnd,
            padding: EdgeInsetsGeometry.only(top: 50),

            child: Image.asset("assets/images/car5.png",width: 180,height: 120,),),
            Padding(
              padding: const EdgeInsets.only(top: 31,left: 260),
              child: Container(
                  alignment: AlignmentGeometry.center,
                  padding: EdgeInsetsGeometry.only(top: 50),
                  child: Image.asset("assets/images/logoCar.png",width: 100,height: 41,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170,left: 230),
              child: Container(
                width: 120,
                  height: 36,
                  decoration: BoxDecoration(color: Color(0xffB8B8B8).withValues(alpha: .4),borderRadius: BorderRadius.circular(8)),
                 child: TextButton.icon(onPressed: (){}, label: Text("View Details",
                   style: TextStyle(color:Color(0xffFFFFFF),fontSize: 12,fontWeight: FontWeight.w600,),),
                     iconAlignment: IconAlignment.end,
                 icon: Icon(Icons.arrow_forward_ios,size: 14,color: Color(0xffFFFFFF),))
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25,left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 95,
                      height: 26,
                      decoration: BoxDecoration(color: Color(0xffFFFFFF).withValues(alpha: .8),borderRadius: BorderRadius.circular(9999)), alignment: AlignmentGeometry.center,
                      child: Text("In Progress".toUpperCase(),style: TextStyle(color: Color(0xff1C3877),fontSize: 12,fontWeight: FontWeight.w600,),),),
                  SizedBox(height: 10,),
                  Text("TR-2051",style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.bold,fontSize: 20,)),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/Group 13.png"),
                      SizedBox(width: 10,),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Al Olaya, Riyadh",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF))),
                          Text("Pickup",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff7F8590))),
                          SizedBox(height: 16,),
                          Text("Al Rawdah, Jeddah",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF))),
                          Text("Delivery",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff7F8590))),
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
            ]),
            SizedBox(height: 40,),
            Text("Upcoming Trip",style: TextStyle(color: Color(0xff01031A),fontSize: 18,fontWeight: FontWeight.bold),),
            Container(height: 2,width: 60,
              decoration: BoxDecoration(gradient:LinearGradient(colors: [
                Color(0xff1C3877),
                Color(0xffF3F5F9)
              ],
                  stops: [0.30,.98])),),
            SizedBox(height: 20,),
            Stack(
              children: [Container(width: double.infinity,height: 232,
              decoration: BoxDecoration(color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(24),
                  border: Border(left: BorderSide(color: Color(0xff1C3877),width: 3,style: BorderStyle.solid))),),
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(width: 80,
                          height: 26,
                          decoration: BoxDecoration(color: Color(0xff1444AE).withValues(alpha: .1),borderRadius: BorderRadius.circular(9999)), alignment: AlignmentGeometry.center,
                          child: Text("Upcoming".toUpperCase(),style: TextStyle(color: Color(0xff1C3877),fontSize: 10,fontWeight: FontWeight.w600,),),),
                        Spacer(),
                        Text("TR-1025",style: TextStyle(color: Color(0xff01031A),fontWeight: FontWeight.bold,fontSize: 20,))

                      ],),
                    ),
                    ListTile(leading: DecoratedBox(decoration: BoxDecoration(border: Border.all(color: Color(0xffF3F4F6),width: 1,strokeAlign: BorderSide.strokeAlignOutside),shape: BoxShape.circle,),
                        child: CircleAvatar(radius: 24,backgroundColor: Color(0xffF9FAFB),child: SvgPicture.asset("assets/icons/box.svg"),)),
                    title: Text("Fahad Salem",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff01031A)),),
                    subtitle: Row(
                      children: [
                        Text("Al Aziziyah, Jeddah",style: TextStyle(color: Color(0xff43474E),fontSize: 12,fontWeight: FontWeight.w400),),
                        SizedBox(width: 2,),
                        SvgPicture.asset("assets/icons/arrow.svg",width: 9,height: 7.5),
                        SizedBox(width: 2,),
                        Text("Al Malaz, Riyadh",style: TextStyle(color: Color(0xff43474E),fontSize: 12,fontWeight: FontWeight.w400))
                      ],
                    ),
                    ),
                    SizedBox(height: 7,),
                    Text("- "*40,maxLines: 1,style: TextStyle(color: Colors.grey),),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        SvgPicture.asset("assets/icons/clock.svg",width: 12,height: 12,),
                        SizedBox(width: 6,),
                          Text("ETA".toUpperCase(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff1C3877)),),
                          SizedBox(width: 6,),
                          Text("12 Aug 2026  12:00 PM",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff6F767E))),
                          Spacer(),
                          SizedBox(
                            width: 35,
                            height:33,
                            child: FloatingActionButton(onPressed:() {
                            },backgroundColor: Color(0xff1444AE).withValues(alpha: .05),elevation: 0,child: Icon(Icons.arrow_forward_ios,size: 16,weight: 6.5,),)
                          )

                      ],),
                    )

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 270,),
                  child: ClipRRect(borderRadius: BorderRadiusGeometry.circular(25),
                      child: Image.asset("assets/images/topshadoo.png",fit: BoxFit.cover,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125,),
                  child: ClipRRect(borderRadius: BorderRadiusGeometry.circular(25),
                      child: Image.asset("assets/images/bottomshadoo.png",fit: BoxFit.cover,)),
                )
              ]
            )
        ],),
      ),
    );
  }

}