import 'package:flutter/material.dart';
import 'package:shopeasy/navigation/route_constants.dart';
import 'package:shopeasy/navigation/router.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Sizer(builder: (context, orientation, deviceType)=>GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: loginRoute,
      onGenerateRoute: onGenrateRoute,
    ));
  }
}


