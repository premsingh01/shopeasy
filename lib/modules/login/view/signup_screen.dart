import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        leading: const BackButton(
          color: Colors.black,
        ),

        backgroundColor: Colors.white,
        elevation: 2,

        title: const Text(
            'SHOP EASY',

          style:  TextStyle(
            color: Colors.black,
            fontFamily: 'SunnySpellsRegular',
              fontSize: 30,
            letterSpacing: 2,
          ),
          textAlign: TextAlign.center,

        ),


      ),


      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),

                child:  TextField(
                  textAlign: TextAlign.start,


                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.person, color: Colors.black,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),

                child:  TextField(
                  textAlign: TextAlign.start,


                  decoration: InputDecoration(
                    hintText: 'Email or Phone Number',
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.email, color: Colors.black,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),

                child:  TextField(
                  textAlign: TextAlign.start,
                  obscureText: true,
                  obscuringCharacter: '*',
                  // onChanged: () {} ,

                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.lock, color: Colors.black,),
                  ),
                ),
              ),

              SizedBox(height: 15.w),

              ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding:   EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
              ),
            ],

          ), ),
    );
  }
}
