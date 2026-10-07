import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  final list=[
    NotificationModel(title: "New Trip Assigned", body: "You have been assigned a new trip\nTR-2060.", time: "10:30 AM", type: NotificationType.newTrip, isRead: false),
    NotificationModel(title: "Trip Cancelled", body: "Trip TR-2050 has been cancelled.\n Please check your assigned trips.", time: "09:15 AM", type: NotificationType.TripCansel, isRead: false),
    NotificationModel(title: "Trip Update", body: "Trip TR-2050 status updated to In \nTransit.", time: "07:00 AM", type: NotificationType.TripUpdate, isRead: false),
    NotificationModel(title: "Location Sharing", body: "Your location is being shared \nsuccessfully.", time: "Yesterday", type: NotificationType.Location, isRead: true),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text("Notification",),
      ),
        flexibleSpace: Stack(children: [
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
body: SafeArea(child:
DefaultTabController(length: 3,
    child:Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 16,vertical: 24),
      child: Column(
        children: [
          Container(
            height:45,
            decoration: BoxDecoration(
              color: Color(0xff0A4AEB).withValues(alpha: .08),
              borderRadius: BorderRadius.circular(16)),
                 child: TabBar(

                   padding: EdgeInsetsGeometry.directional(start:12,end: 12,bottom: 4,top: 4 ),
                 labelStyle:TextStyle(fontSize: 14,fontWeight: FontWeight(590)),
                 tabs:[
                 Tab(text: "All",),
                 Tab(text: "Unread",),
                 Tab(text: "Read",)
            ],
            unselectedLabelColor: Color(0xff1C3877),
            labelColor: Color(0xffFFFFFF),
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Color(0xff1C3877),borderRadius: BorderRadius.circular(8)),),
          ),
          Expanded(child: TabBarView(children: [
            Container(child: ListView.separated(
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) => _item(model: list[index],),
                separatorBuilder: (context, index) => SizedBox(height: 16,), itemCount: list.length),
            ),
            Container(
            ),
            Container(
            ),
          ]),

          )
        ],
      ),
    ),)
),

    );
  }
}
class _item extends StatefulWidget {
   final NotificationModel model;
   const _item({super.key,required this.model});

  @override
  State<_item> createState() => _itemState();
}

class _itemState extends State<_item> {
  String get iconName{
    switch(widget.model.type) {
      case NotificationType.newTrip:
        return "car.svg";
      case NotificationType.TripCansel:
        return "trip_cansel.svg";
      case NotificationType.TripUpdate:
        return "update.svg";
      case NotificationType.Location:
        return "location.svg";
    }
  }
  int get iconBGName{
    switch(widget.model.type) {
      case NotificationType.newTrip:
        return 0xffEFF6FF;
      case NotificationType.TripCansel:
        return 0xffF0FDF4;
      case NotificationType.TripUpdate:
        return 0xffFFF7ED;
      case NotificationType.Location:
        return 0xffFAF5FF;
    }
  }
  @override
  Widget build(BuildContext context) {
  return  ListTile(
    tileColor: Colors.white,
    onTap:() {
       widget.model.isRead=true;
       setState(() {

       });
    },
    contentPadding: EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    leading: CircleAvatar(
      radius: 24,
      backgroundColor: Color(iconBGName),
      child: SvgPicture.asset(
        'assets/icons/$iconName',
        height: 18,
        width: 22.5,
        fit: BoxFit.scaleDown,
      ),
    ),
    title: Row(
      children: [
        Text(
          widget.model.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff1C3877),
          ),
        ),
        Spacer(),
        Text(
          widget.model.time,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff718096),
          ),
        ),
        SizedBox(width: 8),
        if(widget.model.isRead != true)
        CircleAvatar(radius: 4, backgroundColor: Color(0xff2B6CB0)),
      ],
    ),
    subtitle: Text(
      widget.model.body,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff718096),
      ),
    ),
  );
  }
}
class NotificationModel {
  final String title,body,time;
  final NotificationType type;
   bool isRead;
  NotificationModel({required this.title, required this.body, required this.time, required this.type, this.isRead=true});

}
enum NotificationType {newTrip,TripCansel,TripUpdate,Location}

