import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherExaminationController extends GetxController {
  //TODO: Implement OtherExaminationController
  List category = ['Category','Category1','Category2'] ;
  var  selectedcategory = 'Category'.obs;
  List department = ['Department','Department1','Departemnt2'];
  var selecteddepartment = 'Department'.obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  //void increment() => count.value++;
}
