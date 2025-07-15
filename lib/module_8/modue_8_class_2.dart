import 'package:flutter/material.dart';

import 'list_view.dart';

class Module8class2 extends StatelessWidget {
   Module8class2({super.key});

   final _formKey = GlobalKey<FormState>();
   TextEditingController phoneController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 8 class 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Facebook_Logo_%282019%29.svg/2560px-Facebook_Logo_%282019%29.svg.png',
              width: 250,
            ),
            Image.asset(
              'asset/YT.png',
              width: 250,
            ),
            Text(
              'Login with phone and password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        hintText: 'Phone number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your phone number';
                      } else if (value.length != 11) {
                        return 'Please enter correct phone number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter password';
                      } else if (value.length < 6) {
                        return 'password must be at lest 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 300,
                      child:
                          ElevatedButton(onPressed: () {
                            if(_formKey.currentState!.validate()){

                             Navigator.push(context, MaterialPageRoute(builder: (context)=> ListV(name: phoneController.text,)));
                            }
                          }, child: Text('Login')))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
