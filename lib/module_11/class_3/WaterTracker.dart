import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ostad_11/module_11/class_3/widget/add_water_btn.dart';

class WaterTracker extends StatefulWidget {
  const WaterTracker({super.key});

  @override
  State<WaterTracker> createState() => _WaterTrackerState();
}

class _WaterTrackerState extends State<WaterTracker> {
  int currentInTake = 0;
  final int goal = 5000;
  Timer ? _time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _time = Timer.periodic(Duration(seconds: 1), (timer) {

      print(timer.tick);

        if(currentInTake > 0){
          setState(() {
            currentInTake = (currentInTake-1).clamp(0, goal);
          });
        }

    });
  }


  void waterAdd(int amount){
    setState(() {
      currentInTake = (currentInTake + amount).clamp(0, goal);
    });
  }

  void resetTank(){
    setState(() {
      currentInTake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake/goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          'Water Tracker',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 2)
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Today\'s InTank',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${currentInTake} LTR',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),

              // 0-1 | 0.1 = 10 | 0.5 = 50%
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.blue,
                      strokeWidth: 10,
                      value: progress,
                    ),
                  ),
                  Text(
                    '${(progress*100).toInt()}%',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),

              SizedBox(
                height: 40,
              ),




              Wrap(

                children: [

                  addWaterbtn(amount: 200, onClick:()=> waterAdd(200), icon: Icons.local_drink,),
                  addWaterbtn(amount: 500, onClick: ()=> waterAdd(500),),
                  addWaterbtn(amount: 1000, onClick: ()=> waterAdd(1000),),


                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: ()=>resetTank(),
                    child: Text('Reset'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

