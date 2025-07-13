import 'package:flutter/material.dart';
class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('module 8 class 1'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Enter your number',
                labelText: 'Phone number',
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 18
                ),

                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.purple
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Enter password',
                  labelText: 'password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                  ),

                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.purple
                  ),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
          
          SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(onPressed: (){
                  if(phoneController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter phone number'))
                    );
                  }else if(phoneController.text.length < 11){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please enter correct phone number'))
                    );

                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(phoneController.text))
                    );
                  }

              }, child: Text('Submit'))),
          SizedBox(height: 10,),
          Card(
            child: SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(onPressed: (){
                  phoneController.clear();
                  passwordController.clear();

                }, child: Text('Clear'))),
          ),

          SizedBox(
              height: 40,
          ),

          Container(
            alignment: Alignment.center,

            height: 70,
            width: 220,
            decoration: BoxDecoration(

              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Colors.black
              ),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(4,20)
                )
              ]
            ),
            child: Text('this is continer'),
          ),

          SizedBox(height: 50,),

      

        ],
      ),
    );
  }
}
