import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopeasy/navigation/nested_keys.dart';

class BottomNavbarController extends GetxController {
  RxInt tabIndex = 0.obs;

  changeTabIndex(int index) {
    tabIndex.value = index;

    if(index==tabIndex.value){
      switch(index){
        case 0:
          NestedKeys.home.currentState?.popUntil((route) => route.isFirst);
          break;
      }
    }

  }
}