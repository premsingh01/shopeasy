import 'package:flutter/material.dart';
import 'package:shopeasy/modules/product_page/view/product_page.dart';
import 'package:shopeasy/modules/bottom_navbar/widgets/shopping_details.dart';
import 'package:shopeasy/navigation/route_constants.dart';
import 'package:sizer/sizer.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: InkWell(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
          Navigator.pushNamed(context, ProductPageRoute);

        },

        child: ListView(
          children: [
           const Padding(
              padding:  EdgeInsets.symmetric(vertical: 15, horizontal: 20,),
              child: Text("All Products",
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
              ),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 0 , mainAxisSpacing: 0,
                  mainAxisExtent: 28.h,
                ),
                itemBuilder: (context, index) => const ShoppingDetails()),
          ],
        ),
      ),
    );
  }
}
