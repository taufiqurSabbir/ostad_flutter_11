
import 'package:flutter/material.dart';
import 'package:flutter_ostad_11/home.dart';

import 'flutter_class_3.dart';
import 'module_8/assignment.dart';
import 'module_8/list_view.dart';
import 'module_8/modue_8_class_2.dart';
import 'module_8/module8_class3.dart';
import 'module_8/module8_stack.dart';
import 'module_8/module_8_class_1.dart';
import 'module_9/class_1.dart';
import 'module_9/class_2.dart';
import 'module_9/class_3.dart';
import 'module_9/own_widget.dart';

class MyApp extends StatelessWidget{

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: AppBarTheme(
          color: Colors.orange,
          titleTextStyle: TextStyle(
            fontSize: 30
          )
        ),
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
        ),

        textTheme:  TextTheme(
          headline1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple
          )
        ),

        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple,
              width: 1,
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.deepPurple,
          ),

          labelStyle: TextStyle(
            color: Colors.deepPurple
          )
        )
      ),
      title: 'Batch 11 flutter',
      initialRoute: '/class3',
      routes: {
        '/home' :(contex) => TravelHomeScreen(),
        '/class1': (context) =>Alert(),
        '/class2' : (context) => OwnWidget(),
        '/class3' : (context) => class3()
      },


    );
  }

}