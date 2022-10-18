import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopeasy/modules/bottom_navbar/widgets/shopping_page.dart';
import 'package:sizer/sizer.dart';

import '../../../navigation/route_constants.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          SizedBox(height: 3.h,),
          Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  //For her
                  InkWell(
                    child: Container(
                      width: 47.w,
                      height: 40.h,

                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/for_her.jpg',),
                          fit: BoxFit.cover,
                        ),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, ShoppingPageRoute);
                              },
                              child: const Text(
                                'FOR HER',
                                style:  TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color.fromARGB(100, 22, 44, 33),
                                side: const BorderSide(
                                  style: BorderStyle.solid,
                                ),
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, ShoppingPageRoute);
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingPage()));
                    },
                  ),

                  //FOR HIM
                  InkWell(
                    child: Container(
                      width: 47.w,
                      height: 40.h,

                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/for_him.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, ShoppingPageRoute);
                                },
                                child: const Text(
                                  'FOR HIM',
                                  style:  TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(100, 22, 44, 33),
                                side: const BorderSide(
                                  style: BorderStyle.solid,
                                ),
                              ),),),

                        ],),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, ShoppingPageRoute);
                    },
                  ),

                ],),

              SizedBox(height: 1.h,),

              //For Kids
              InkWell(
                child: Container(
                  height: 35.h,
                  width: 97.w,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/for_kids1.jpg'),
                    ),
                  ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, ShoppingPageRoute);
                            },
                            child: const Text(
                              'KIDS',
                              style:  TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(100, 22, 44, 33),
                              side: const BorderSide(
                                style: BorderStyle.solid,
                              ),
                              // minimumSize: Size(30, 25),
                            ),),),

                      ],),
                  ),
                onTap: () {
                  Navigator.pushNamed(context, ShoppingPageRoute);
                },
              ),

            ],),
        ],),
    );
  }
}
