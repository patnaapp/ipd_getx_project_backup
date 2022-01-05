import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhysicalExaminationController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement PhysicalExaminationController
  //var tabIndex = 0.obs;
  late TabController tabController;

  // void changeTabIndex(int index) {
  //   tabIndex.value = index;
  // }
  // void changeTabIndex(int index) {
  //
  //   tabIndex.value = index ;
  //   update();
  //
  // }




  //final count = 0.obs;
  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 2);
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
