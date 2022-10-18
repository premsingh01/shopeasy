import 'package:flutter/material.dart';
import 'package:shopeasy/modules/my_cart/widgets/cart-details.dart';
import 'package:sizer/sizer.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 4.h,),

              const Align(
                alignment: Alignment.center,
                child: Text('My Cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
                ),
              ),

              SizedBox(height: 3.h),

              CartDetails(),

            ],
          ),
        ],
      ),
    );
  }
}
