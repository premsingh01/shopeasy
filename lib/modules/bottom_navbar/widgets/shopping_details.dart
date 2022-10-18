import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
 class ShoppingDetails extends StatelessWidget {
   const ShoppingDetails({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       decoration: BoxDecoration(
         border: Border.all(
           color: Colors.grey,
           width: 0.2,
         ),
       ),
       child: Column(
         children: [
           Stack(
             children: [
               Image.network('https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-web-donut-19090.jpg&fm=jpg',
                 fit: BoxFit.cover,
                 height: 18.h,
                 width: 50.w,
               ),
               Align(
                 alignment: Alignment.topLeft,
                 child: IconButton(
                   onPressed: () {
                     print('clicked');
                   },

                   icon: const Icon(Icons.favorite_outline_sharp),
                 ),
               ),
             ],
           ),

           const Padding(
             padding:  EdgeInsets.only(left: 15, top: 10, right: 42, bottom: 5),
             child: Text('Reid Lace-Up Shoes Multi',
               style: TextStyle(
                 letterSpacing: 1.0,
               ),),
           ),

           const Align(
             alignment: Alignment.centerRight,
             child: Padding(
               padding:  EdgeInsets.only(right: 5,),
               child:  Text('AED 235',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 18,
                 ),),
             ),
           ),
         ],
       ),
     );
   }
 }
