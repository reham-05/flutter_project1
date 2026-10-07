

import 'package:flutter/material.dart';

class ContactView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFAFAFA) ,
    appBar: AppBar(backgroundColor: Color(0xffFFFFFF),toolbarHeight: 30,),
    body: SafeArea( child: Padding(
    padding: EdgeInsets.all(16),
    child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(
      height: 50,
      width: 50,
      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new),iconSize: 25,
      style: IconButton.styleFrom(backgroundColor: Color(0xffFFFFFF),
      alignment: AlignmentDirectional.center,
      padding: EdgeInsetsDirectional.only(end: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: Color(0xffECECEC)),),),),),
        SizedBox(height: 28,),
        Text("Create Your Password",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
        SizedBox(height: 8,),
        Text("Almost there! Create your password to finish setting up your account.",
          style: TextStyle(fontSize: 14),),
        SizedBox(height: 28,),
        Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,)),
        SizedBox(height: 8,),
        TextFormField(
            obscureText: true,
            decoration: InputDecoration(suffixIcon: Icon(Icons.visibility_off_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
              ),
      
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffD1D1DB)),),
      
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xff59595c)),),
      
            )),
        SizedBox(height: 15,),
        Text("Confirm Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,)),
        SizedBox(height: 10,),
        TextFormField(
            //obscureText: true,
            decoration: InputDecoration(suffixIcon: Icon(Icons.visibility_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
              ),
      
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffD1D1DB)),),
      
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xff59595c)),),
      
            )),
        SizedBox(height: 10,),
        Column(
          children: [
          Row(children: [
            Icon(Icons.check_circle,
            color: Colors.teal,),
            SizedBox(width: 10,),
            Text("At least 8 Characters",style: TextStyle(color: Color(0xff404040,),fontSize: 14),)
          ],),
            Row(children: [
              Icon(Icons.radio_button_unchecked,
                color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Include an alphabet (Aa-Zz)",style: TextStyle(color: Color(0xff404040,),fontSize: 14),)
            ],),
            Row(children: [
              Icon(Icons.check_circle,
                color: Colors.teal,),
              SizedBox(width: 10,),
              Text("Include a Number (0-9)",style: TextStyle(color: Color(0xff404040,),fontSize: 14),)
            ],)
        ],),
        SizedBox(height: 40,),
        SizedBox(
            width: double.infinity,
            height: 56,
            child: FilledButton(onPressed: (){}, child: Text("Create Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,)),
              style: FilledButton.styleFrom(backgroundColor: Color(0xffFF9352),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))),)),
      ],),
    ))));
  }

}