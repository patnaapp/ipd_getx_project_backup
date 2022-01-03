import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/surgery_controller.dart';

class SurgeryView extends GetView<SurgeryController> {
  @override

  Widget build(BuildContext context) {
    Get.put(SurgeryController());
    return Scaffold(
      appBar: AppBar(
        title: Text('SurgeryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SurgeryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
