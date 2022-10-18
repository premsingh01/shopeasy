import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopeasy/modules/bottom_navbar/widgets/shopping_details.dart';
import 'package:shopeasy/modules/product_page/controller/product_controller.dart';
import 'package:shopeasy/navigation/route_constants.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(ProductController());

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [


                  Image.network('https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-web-donut-19090.jpg&fm=jpg',
                    fit: BoxFit.cover,
                    height: 45.h,

                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.black,
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10,),
                  child: Text('Reid Lace-Up Shoes Multi',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),

              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top:9 ,right: 15, bottom: 12),
                  child: Text('AED 235',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

               Divider( color: Colors.grey[400], thickness: 0.5,),



              Obx(() {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Text('Size: ${controller.selectedSize.value}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            for(int i=0; i<controller.sizes.length; i++)     // (String item in controller.sizes)
                              InkWell(
                                child: Card(

                                  color: controller.selectedSize.value == controller.sizes[i] ? Colors.grey[300] : Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                                    child: Text(
                                      controller.sizes[i],
                                      style: const TextStyle(
                                        fontSize: 13,

                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  controller.changeSize(controller.sizes[i]);
                                },
                              ),
                          ],
                        ),
                      ),

                     SizedBox(height: 3.5.h,),

                      ElevatedButton(
                          onPressed: () {
                            final snackbar = SnackBar(content: Text('Choose the size') );

                            if(controller.selectedSize.value == ''){
                              ScaffoldMessenger.of(context).showSnackBar(snackbar);
                            }
                            else{
                               Navigator.pushNamed(context, MyCartRoute);
                            }

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ADD TO CART',
                              style: const TextStyle(
                                letterSpacing: 1,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          minimumSize: Size(100.w, 7.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )
                        ),
                      ),
                    ],
                  );
                }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
