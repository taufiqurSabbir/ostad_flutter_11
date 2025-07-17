import 'package:flutter/material.dart';

class Module_8Class_3 extends StatelessWidget {
  const Module_8Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
      ),

      // body: GridView.count(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(10, (index) {
      //     return Card(
      //       elevation: 10,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(25)
      //       ),
      //       color: Colors.red,
      //       child:Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone_android,size: 60,color: Colors.white,),
      //           SizedBox(height: 5,),
      //           Text('Cash out',
      //           style: TextStyle(
      //             fontSize: 25,
      //             color: Colors.white
      //           ),
      //           )
      //         ],
      //       ) ,
      //     );
      //   })
      // ),


      body: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10,
         ),
          itemCount: 20,
          itemBuilder: (context,index){
           return Card(
             elevation: 10,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25)
             ),
             color: Colors.red,
             child:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.phone_android,size: 60,color: Colors.white,),
                 SizedBox(height: 5,),
                 Text(index.toString(),
                   style: TextStyle(
                       fontSize: 25,
                       color: Colors.white
                   ),
                 )
               ],
             ) ,
           );
          },

      ),
    );
  }
}
