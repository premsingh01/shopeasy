import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../../product_page/controller/product_controller.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  // void counter(){
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(ProductController());


    return Container(
        height: 20.h, width: 94.w,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),

      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12,),
            child: Image.network('https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-web-donut-19090.jpg&fm=jpg',
            height: 20.h, width: 33.w,
            fit: BoxFit.cover,),
          ),

          //mid section..product name,size,price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.h,),

              const Padding(
                padding:  EdgeInsets.only( bottom: 10,),
                child: Text(
                  'Reid Lace-Up Shoes Multi',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    fontSize: 12,
                  ),
                ),
              ),

              Text('Size: ${controller.selectedSize.value} ',
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 0.7,
              ),
              ),

              SizedBox(height: 6.h,),

             const Text('AED 235',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SizedBox(width: 1.w,),

          //counter add and minus
          Column(
            children: [
              SizedBox(height: 1.h,),

              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(

                    onPressed: () => setState(() {
                      itemCount++ ;
                    }),
                    icon: const Icon(Icons.add),

                ),
              ),

              SizedBox(height: 1.h,),

              Text('${itemCount}',
              style: TextStyle(
                fontSize: 16,
              ),),

              SizedBox(height: 1.h,),

              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: IconButton(
                  onPressed: () => setState(() {
                     if(itemCount > 1){
                       itemCount-- ;
                     }
                    }),
                  icon: const Icon(Icons.minimize),

                ),
              ),
            ],
          ),
        ],
      ),
      );

  }
}
