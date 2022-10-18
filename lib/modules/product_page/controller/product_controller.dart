import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<String> sizes = [
    '39' , '40' , '41' , '42'
  ];

  RxString selectedSize = ''.obs;

 void changeSize (String newSize) {
   selectedSize.value = newSize;

  }
}