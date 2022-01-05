import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientDetailsController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement PatientDetailsController
  final List<Tab> patientDetailTabs = <Tab>[
    Tab(text: 'Vitals'),
    Tab(text: 'Investigations'),
    Tab(text: 'Medications'),
  ];
  final tabIndex = 0.obs;
  // TabController _tabController;
  final count = 0.obs;
  @override
  void onInit() {
    // _tabController = TabController(length: patientDetailTabs.length, vsync: this);
    super.onInit();
  }
  void changeTabIndex(index) {
    tabIndex.value = index;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
