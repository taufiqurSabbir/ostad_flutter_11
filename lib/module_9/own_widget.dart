import 'package:flutter/material.dart';
import 'package:flutter_ostad_11/module_9/widget/city_card.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print('Own widget');
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [




           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(

               children: [
                 CityCard(img: 'https://media.istockphoto.com/id/1347665170/photo/london-at-sunset.jpg?s=612x612&w=0&k=20&c=MdiIzSNKvP8Ct6fdgdV3J4FVcfsfzQjMb6swe2ybY6I=', title: 'London', rating: '5.0',),
                 SizedBox(width: 10,),
                 CityCard(img: 'https://res.cloudinary.com/jerrick/image/upload/v1687258926/6491872d1f962c001de086fa.jpg', title: 'Dhaka', rating: '5.0',),
                 SizedBox(width: 10,),
                 CityCard(img: 'https://static.toiimg.com/thumb/msid-52040615,width-748,height-499,resizemode=4,imgsize-167596/Burj-al-arab.jpg', title: 'Dubai', rating: '5.0',),
               ],
             ),
           )


          ],
        ),
      
    );
  }
}

