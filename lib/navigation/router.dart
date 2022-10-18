
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopeasy/modules/bottom_navbar/view/bottom_navbar.dart';
import 'package:shopeasy/modules/bottom_navbar/widgets/home_screen_widget.dart';
import 'package:shopeasy/modules/my_cart/view/my_cart.dart';
import 'package:shopeasy/modules/product_page/view/product_page.dart';
import 'package:shopeasy/modules/bottom_navbar/widgets/shopping_page.dart';
import 'package:shopeasy/modules/login/view/login_screen.dart';
import 'package:shopeasy/modules/login/view/signup_screen.dart';
import 'route_constants.dart'as routes;

Route<dynamic>? onGenrateRoute(RouteSettings settings){
  switch(settings.name){
    case routes.loginRoute:
      return MaterialPageRoute(builder: (_)=>LoginScreen());

    case routes.SignupRoute:
      return MaterialPageRoute(builder: (_) => SignUpScreen());

    case routes.BottomNavbarRoute:
      return MaterialPageRoute(builder: (_) => BottomNavbar());

    case routes.ShoppingPageRoute:
      return MaterialPageRoute(builder: (_) => ShoppingPage());

    case routes.MyCartRoute:
      return MaterialPageRoute(builder: (_) => MyCart());


  }
}

Route<dynamic>? homeOnGenrateRoute(RouteSettings settings){
  switch(settings.name){

    case routes.HomeScreenRoute:
      return MaterialPageRoute(builder: (_) => HomeScreenWidget());

    case routes.ShoppingPageRoute:
      return MaterialPageRoute(builder: (_) => ShoppingPage());

    case routes.ProductPageRoute:
      return MaterialPageRoute(builder: (_) => ProductPage());


    case routes.MyCartRoute:
      return MaterialPageRoute(builder: (_) => MyCart());
  }
}
