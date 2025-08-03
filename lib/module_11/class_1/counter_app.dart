import 'package:flutter/material.dart';

import '../../module_9/class_3.dart';
import '../../module_9/own_widget.dart';

class CounterApp extends StatefulWidget {
   CounterApp({super.key}){
    print('1 Constructor');
   }

   @override
   State<CounterApp> createState() {
     print('2 Create state');
     return _CounterAppState();
   }
}

class _CounterAppState extends State<CounterApp> {
  int number=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3 InitState ');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('4 deactivate ');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('5 dispose ');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                      print(number);
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  )),
              ElevatedButton(
                  onPressed: () {

                    setState(() {
                      number++;
                      print(number);
                    });

                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  )),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OwnWidget()));
              }, child: Text('Class 3') )
            ],
          )
        ],
      ),
    );
  }
}
