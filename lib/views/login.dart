import 'package:app22/core/helper_method.dart';
import 'package:app22/views/hoom/pages/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}
bool isPasswordHidden=true;
final emailController=TextEditingController();
final passwordController=TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/login.png",
        width: double.infinity,height: double.infinity,
      fit: BoxFit.cover,),
      bottomSheet: BottomSheet(onClosing: () {},
        builder: (context) => Container(
          padding: EdgeInsetsGeometry.directional(top: 57, start: 18,end: 18,bottom: 18),
        child: Form(onChanged:(){ setState(() {

        });},
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
              children:[ Image.asset("assets/images/logo.png",width: 162,height: 54,),
              SizedBox(height: 24,),
              Text(" Log In ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff1C3877)),),
                SizedBox(height: 18,),
              Text("Enter your email and password to log in ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff6C7278)),),
              SizedBox(height: 28,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText:"email id".toUpperCase(),
                  hintText: "Enter your email",
                  prefixIcon: SvgPicture.asset("assets/icons/person.svg",fit: BoxFit.scaleDown,width: 20,height: 20,),),style: TextStyle(color: Color(0xff6B7280),),

                ),
                SizedBox(height: 28,),
              TextFormField(
                obscuringCharacter: "*",
                controller: passwordController,
                obscureText:isPasswordHidden,
                  decoration: InputDecoration(
                  labelText:"Password".toUpperCase(),
                  hintText: "Enter your password",
                  suffixIcon:Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 24,child: VerticalDivider(color: Color(0xffD9D9D9),width: 1,thickness: 1,),),
                      IconButton(onPressed: (){
                        isPasswordHidden=!isPasswordHidden;
                        setState(() {

                        });
                      },
                          icon: SvgPicture.asset(isPasswordHidden?"assets/icons/eye-off.svg":"assets/icons/eye_on.svg",fit: BoxFit.scaleDown,width: 20,height: 20,)),
                      SizedBox(width: 20,),
                    ],
                  ),

                      prefixIcon: SvgPicture.asset("assets/icons/password.svg",fit: BoxFit.scaleDown,width: 20,height: 20,)
              ),style: TextStyle(color: Color(0xff6B7280)),),
                SizedBox(height: 20,),
              FilledButton(onPressed: emailController.text.isEmpty||passwordController.text.isEmpty?null:(){
                print(emailController.text);
                print(passwordController.text);
                goto(page: HomeView(),keepHistory: false);
              }, child: Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))]),
        ),
      ),),
    );
  }
}