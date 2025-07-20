import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});



  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialog(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context)=>AlertDialog(

        title: Text('this is title'),
        content: Text('Are you sure ... ?'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancle')),
          ElevatedButton(onPressed: (){}, child: Text('Submit'))
        ],

      ));
    }

    void showAlertDialogWithIcon(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Installation block') ,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 40,),
                SizedBox(width: 5,),
                Text('Warring')
              ],
            ),
            SizedBox(height: 10,),
            Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec',
            style: TextStyle(
              color: Colors.grey
            ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Ok'))
        ],
      ));
    }

    void showSimpleDialog(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text('Simple Dialog'),
        children: [
          SimpleDialogOption(
            child: Text('Option-1'),
          ),
          SimpleDialogOption(
            child: TextField(),
          )
        ],
      ));
    }

    showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chose option', style: TextStyle(
              fontSize: 18,
            ),),

            ListTile(
              title: Text('Option-1'),
              onTap: (){},
              onLongPress: (){},
            ),

            ListTile(
              title: Text('Option-1'),
            ),

            ListTile(
              title: Text('Option-1'),
            ),

            ListTile(
              title: Text('Option-1'),
            ),
            
            SizedBox(
                width: 300,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Save')))
          ],
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),

            SizedBox(height: 10,),

            Container(
              color: Colors.red,
              width: screenSize.width*0.5,
              height: screenSize.height*0.3,
            ),

            Text('This is text',
            style: TextStyle(
              fontSize: screenSize.width > 600 ? 32 : 18
            ),
            ),

            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child:Text('Alert Dialog') ),

            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon();
            }, child:Text('Alert Dialog with Icon') ),

            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child:Text('Simple Dialog') ),

            ElevatedButton(onPressed: (){
              showBottomSheetAlert();
            }, child:Text('Bottom sheet') ),
          ],
        ),
      ),
    );
  }
}
