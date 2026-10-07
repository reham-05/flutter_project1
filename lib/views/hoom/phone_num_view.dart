import 'package:flutter/material.dart';

class PhoneNumView extends StatefulWidget{
  @override
  State<PhoneNumView> createState() => _PhoneNumViewState();
}

class _PhoneNumViewState extends State<PhoneNumView> {
  int code =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xffFAFAFA) ,
        appBar: AppBar(backgroundColor: Color(0xffFFFFFF),toolbarHeight: 30,),
        body: SafeArea( child: Padding(
          padding: EdgeInsets.all(16),
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
                  side: BorderSide(color: Color(0xffECECEC)),
                ),
              ),
            ),
          ),
          SizedBox(height: 28,),
          Text("What’s your Phone number?",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
          SizedBox(height: 8,),
          Text("We’ll send you a code to verify it’s you",
            style: TextStyle(fontSize: 16),),
           SizedBox(height: 8,),
           Row(children: [
             SizedBox(
               width: 84,
               height: 54,
               child: DecoratedBox(

                 decoration: BoxDecoration(border: Border.all(color: Color(0xffD1D1DB)),
                     borderRadius: BorderRadius.circular(12),),
                 child: DropdownButton(
                     value: code,
                     style: TextStyle(color: Color(0xff6C6C89),fontSize: 16),
                     padding: EdgeInsetsDirectional.only(start: 10,end: 10),
                     icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff6C6C89),),
                     items: [
                   DropdownMenuItem(child: Text("+20"),value: 20,),
                   DropdownMenuItem(child: Text("+966"),value: 966,)
                 ], underline: SizedBox(),
                     borderRadius: BorderRadius.circular(12),
                     onChanged: (value){
                       if(value!=null){
                         code==value;
                         setState(() {

                         });
                       }
                     }),

               ),
             ),


             SizedBox(width: 15,),
             Expanded(
                 child: TextFormField(
                   keyboardType: TextInputType.phone,
                   style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,backgroundColor: Color(0xffFFFFFF)),
                   decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Color(0xffD1D1DB))),
                     hintText: "0000000000",
                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffD1D1DB)),
                     borderRadius: BorderRadius.circular(12))


                   ),
                 ))
           ],),




           Spacer(),
           SizedBox(
             height: 56,
               width: double.infinity,
               child: FilledButton(onPressed: (){},
                   child: Text("Continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
               style: FilledButton.styleFrom(backgroundColor: Color(0xffFF9352),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),))



         ],
    ),
    ))
    );
  }
}