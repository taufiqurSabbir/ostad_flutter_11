
import 'package:flutter/material.dart';
import 'package:flutter_ostad_11/home.dart';

import 'flutter_class_3.dart';
import 'module_11/class_1/counter_app.dart';
import 'module_11/class_2/CalculatorApp.dart';
import 'module_11/class_3/WaterTracker.dart';
import 'module_12/class_1.dart';
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

        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
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
      home: MoneyManagment(),
      // initialRoute: '/MoneyManagment',
      // routes: {
      //   '/home' :(contex) => TravelHomeScreen(),
      //   '/class1': (context) =>Alert(),
      //   '/class2' : (context) => OwnWidget(),
      //   '/class3' : (context) => class3(),
      //   '/counterApp' : (context) => CounterApp(),
      //   '/calculator' : (context) => CalculatorApp(),
      //   '/WaterTracker' : (context) => WaterTracker(),
      //   '/MoneyManagment' : (context) => MoneyManagment(),
      // },


    );
  }

}