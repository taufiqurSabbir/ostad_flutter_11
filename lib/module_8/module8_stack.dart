import 'package:flutter/material.dart';

class Module8Stack extends StatelessWidget {
  const Module8Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),

              Positioned(
                bottom: 50,
                left: 10,
                right: 10,

                child: Container(
                  color: Colors.green,
                  height: 200,
                  width: 200,
                ),
              ),

              Positioned(
               top: 50,
                left: 20,
                right: 25,
                child: Container(
                  color: Colors.purple,
                  height: 200,
                  width: 200,
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),

          Stack(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage:NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"
                ),
              ),

              Positioned(
                bottom: 15,
                right: 5,

                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 3)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
           Container(
             height: 5,
               width: double.infinity,
             color: Colors.grey[300],
           ),
              AnimatedContainer(duration: Duration(seconds: 10),
              height: 5,
                width: 200,
                color: Colors.blue,
              )
            ],
          ),


          SizedBox(height: 10,),
          
          Stack(
            children: [
              Image.network('https://investbangladesh.co/wp-content/uploads/2024/04/hero-bangladesh.jpg'),
              Positioned(
                  bottom: 15,
                  right: 100,
                  child: Text('Bangladesh',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
              ))
            ],
          )

        ],
      ),
    );
  }
}
