import 'package:flutter/material.dart';
import 'package:shopeasy/navigation/route_constants.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(

      body: SafeArea(
        child: ListView(
          children: [
            Form(
              key: _formKey,

              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 10.h,),

                const Text(
                  'SHOP EASY',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'SunnyspellsRegular',
                    letterSpacing: 3,
                  ),
                  textAlign: TextAlign.center,

                ),

                SizedBox(height: 15.h,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),

                  child:  TextFormField(
                    textAlign: TextAlign.start,
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return 'Enter the correct Email';
                      }
                      return null;
                    },

                    decoration: InputDecoration(
                      hintText: 'Email or Phone Number',
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.person, color: Colors.black,),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),

                  child:  TextFormField(

                    textAlign: TextAlign.start,
                    obscureText: true,
                    obscuringCharacter: '*',
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return 'Enter the correct Password';
                      }
                      return null;
                    },

                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.lock, color: Colors.black,),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'FORGOT PASSWORD ?',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.2,
                          ),
                        ),

                      ),
                    ),
                  ],
                ),

                SizedBox(height: 3.h,),

                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content:Text('Processing Data'))
                        // );
                       Navigator.pushNamedAndRemoveUntil(context, BottomNavbarRoute, (route) => false);
                    }

                    // Navigator.pushNamed(context, BottomNavbarRoute);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                    child: Text(
                      'SIGN IN',
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

                SizedBox(height: 10.h,),


                const Text(
                    'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center,

                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignupRoute);
                        },
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            letterSpacing: 0.25,
                            color: Colors.black87,
                          ),
                        ),
                    ),

                   const Text(
                      'using your email address',
                      style: TextStyle(
                        letterSpacing: 0.5,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],
          ),
            ),
          ],

        ),
      ),
    );
  }
}
