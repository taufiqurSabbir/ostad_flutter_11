import 'package:flutter/material.dart';

import '../module_8/assignment.dart';
import '../module_8/modue_8_class_2.dart';
import '../module_8/module8_class3.dart';

class Module9Class2 extends StatelessWidget {
  const Module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Module 9 class 2'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Fav',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'setting',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Container(
            //   height: 200,
            //   color: Colors.red,
            //   child: Center(
            //     child: Text('Home',style: TextStyle(
            //       fontSize: 20
            //     ),),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   color: Colors.purple,
            //   child: Center(
            //     child: Text('Fav',style: TextStyle(
            //       fontSize: 20
            //     ),),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   color: Colors.teal,
            //   child: Center(
            //     child: Text('Seeting',style: TextStyle(
            //       fontSize: 20
            //     ),),
            //   ),
            // ),

            TravelHomeScreen(),
            Module8class2(),
            Module_8Class_3(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Taufiqur Sabbir',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'taufiqur2511@gmail',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ],
              )),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                dense: true,
                title: Text('Home'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                dense: true,
                title: Text('Item-1'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text('Item-2'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text('Item-3'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text('Item-4'),
                onTap: () {},
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
