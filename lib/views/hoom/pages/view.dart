import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'notification.dart';
import 'home.dart';
import 'profile.dart';
import 'trip.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();}
class _HomeViewState extends State<HomeView> {
  int currentPage=0;
  final pages=[
    HomePage(),
    TripPage(),
    NotificationsPage(),
    ProfilePage()];
  final icon=["home.svg","trip.svg","notification_1.svg","person2.svg"];
  final text=["Home","Trip","Notification","Profile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSize(
      //  preferredSize: const Size.fromHeight(100),
      //  child: AppBar(
      //    //title: Text(text[currentPage]),
      //    centerTitle: true,
      //    flexibleSpace: Stack(
      //      children: [
      //        Container(
      //        height: 144,
      //        decoration: BoxDecoration(
      //          image: DecorationImage(
      //
      //              image: AssetImage("assets/images/circleB.png"),alignment: AlignmentGeometry.topEnd),
      //            gradient: LinearGradient(colors: [
      //          Color(0xff1C3877),
      //          Color(0xff1C3877).withValues(alpha: .6)
      //        ],begin: AlignmentGeometry.topCenter,
      //          end: AlignmentGeometry.bottomCenter,
      //        )),
      //      ),
      //    Container(
      //      height: 144,
      //      decoration: BoxDecoration(
      //          image: DecorationImage(
      //
      //              image: AssetImage("assets/images/circleS.png"),alignment: AlignmentGeometry.topEnd),))
      //      ]),
      //  ),
      //),

      body: pages[currentPage],
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 34),
      child: Container(
        height: 75,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(75),
          color: Color(0xff0A4AEB).withValues(alpha: .05), ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GNav(
            activeColor: Color(0xffFFFFFF),
            tabBackgroundColor: Color(0xff1C3877),
            tabMargin: EdgeInsetsGeometry.symmetric(vertical: 14),
            //backgroundColor: Color(0xff0A4AEB).withValues(alpha: .08),
              padding: EdgeInsetsGeometry.symmetric(horizontal: 14,vertical: 10),
              onTabChange: (value) {currentPage=value;
              setState(() {});},
            tabs: List.generate(pages.length,
                  (index) => GButton(leading: SvgPicture.asset((currentPage==index &&index==2)?"assets/icons/notification-2.svg":"assets/icons/${icon[index]}",
                    color: currentPage==index?Colors.white:null,),
                      icon: Icons.home,text: text[index],iconSize: 24,gap: 6,),)
          ),
        ),
      ),
    ),
    );
  }
}