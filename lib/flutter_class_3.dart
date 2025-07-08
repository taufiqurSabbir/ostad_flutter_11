import 'package:flutter/material.dart';

class FlutterClass3 extends StatelessWidget {
  const FlutterClass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      // backgroundColor: Colors.grey.withOpacity(0.9),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('class-3'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),
                onPressed: () {}, child: Text('Submit')),

            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 50,
              // width: 200,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                  onPressed: () {}, child: Text('Submit')),
            ),
            
            SizedBox(
              height: 10,
            ),
            
            OutlinedButton(onPressed: (){}, child: Text('Outline Button')),
            
            TextButton(onPressed: (){}, child: Text('Text Button',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),)),
            
            Icon(Icons.phone_android,
            size: 50,
              color: Colors.red,
            ),
            
            IconButton(onPressed: (){
              print("Deleted");
            }, icon: Icon(Icons.delete,color: Colors.red,size: 50,)),

            SizedBox(
              height: 10,
            ),
            
            GestureDetector(
              onTap: (){
                print('Taped on test');
              },
              child: Text('This is test text',style: TextStyle(
                fontSize: 50
              ),),
            ),

            InkWell(
              onTap: (){
                print('On taped inkwell');
              },
              child: Text('This is test text 2',style: TextStyle(
                  fontSize: 50
              ),),
            ),


            Padding(
              // padding: EdgeInsets.all(50),
              // padding: EdgeInsets.only(left: 8,right: 5,top: 10,bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
              child: Text('This is padding',style: TextStyle(
                  fontSize: 50
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
