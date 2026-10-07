
import 'package:app22/core/helper_method.dart';
import 'package:app22/views/hoom/pages/home.dart';
import 'package:app22/views/login.dart';
import 'package:app22/views/on_boarding.dart';
import 'package:app22/views/hoom/pages/view.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    navigatorKey: navKey,
    debugShowCheckedModeBanner: false,
    home: HomeView(),
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0063E6)),
    filledButtonTheme: FilledButtonThemeData(style: FilledButton.styleFrom(
      backgroundColor: Color(0xff1C3877),
      disabledBackgroundColor: Color(0xff0063E6).withValues(alpha: .4),
      disabledForegroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
      fixedSize: Size(double.infinity, 52),

    )),
    inputDecorationTheme: InputDecorationThemeData(
      floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
    appBarTheme: AppBarThemeData(
       centerTitle: true,titleTextStyle: TextStyle(color: Colors.white,letterSpacing: 1,
    fontSize: 20,fontWeight: FontWeight.bold,),toolbarHeight: 100,
  ),
  )));
}