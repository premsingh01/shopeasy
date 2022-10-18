import 'package:flutter/material.dart';
import 'package:shopeasy/modules/bottom_navbar/controller/bottom_navbar_controller.dart';
import 'package:get/get.dart';
import 'package:shopeasy/modules/bottom_navbar/widgets/home_screen_widget.dart';
import 'package:shopeasy/navigation/nested_keys.dart';
import 'package:shopeasy/navigation/route_constants.dart';
import 'package:shopeasy/navigation/router.dart';


//Global Key
// final GlobalKey home= GlobalKey<NavigatorState>();
// final GlobalKey search = GlobalKey<NavigatorState>();
// final GlobalKey fav = GlobalKey<NavigatorState>();
// final GlobalKey profile = GlobalKey<NavigatorState>();


class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final BottomNavbarController controller = Get.put( BottomNavbarController());


    return Obx(() => WillPopScope(
      onWillPop: ()async {
        switch(controller.tabIndex.value){
          case 0:
            bool? popped = await NestedKeys.home.currentState?.maybePop();
            if(popped??false){
              return false;
            }
            break;
        }
        return true;
      },
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,

        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.black,),),
        title: const Text(
          'ShopEasy',
          style:  TextStyle(
            color: Colors.black,
            fontFamily: 'SunnySpellsRegular',
            fontSize: 30,
            letterSpacing: 2,
          ),
        ),

        actions: [
          IconButton(onPressed: () {Navigator.pushNamed(context, MyCartRoute);}, icon: const Icon(Icons.shopping_cart,color: Colors.black,),),
        ],
      ),
      body:  IndexedStack(
        index: controller.tabIndex.value,
        children: [

         Navigator(
           key: NestedKeys.home,
           onGenerateRoute: homeOnGenrateRoute,
            initialRoute: HomeScreenRoute,
         ),

          Text("search"),
          Text("fav"),
          Text("profile"),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

      onTap:(int i) {
      controller.changeTabIndex(i);

      },

      currentIndex: controller.tabIndex.value,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      items: const [
      BottomNavigationBarItem(
      icon: Icon(Icons.home,),
      label: 'Home',
      ),

      BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
      ),

      BottomNavigationBarItem(
      icon: Icon(Icons.favorite_sharp),
      label: 'Star',
      ),

      BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
      ),
      ],
      ),
      ),
    ),
    );
  }
}
