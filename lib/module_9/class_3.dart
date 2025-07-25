import 'package:flutter/material.dart';
import 'package:flutter_ostad_11/module_8/modue_8_class_2.dart';
import 'package:flutter_ostad_11/module_8/module_8_class_1.dart';

import '../module_8/assignment.dart';
import '../module_8/module8_stack.dart';

class class3 extends StatelessWidget {
  const class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 3'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/',

                );
              },
              child: Text('Travel')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/class1');
              },
              child: Text('Class-1')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/class2');
              },
              child: Text('Class-2')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context,animation,secondaryAnimation) => TravelHomeScreen(),
                  transitionsBuilder: (context,animation,secondaryAnimation,child){
                    const  begin = Offset(1.0, 0);
                    const  end = Offset.zero;
                    const  curve = Curves.ease;

                    var tween = Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
                    return SlideTransition(position: animation.drive(tween),child: child,);
                  }

                ));
              },
              child: Text('Travel 2')),

          ElevatedButton(
              onPressed: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Module8Stack()));
              },
              child: Text('Class-3')),
          ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Module8Class1()));
              },
              child: Text('Class-1')),
          ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Module8Stack()));
              },
              child: Text('Class-3')),
          ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Module8class2()));
              },
              child: Text('Class-2')),

          TextField(),
          Text('Class-3',
          style: Theme.of(context).textTheme.headline1,
          )
        ],
      ),
    );
  }
}
