import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/physical_examination_controller.dart';

class PhysicalExaminationView extends GetView<PhysicalExaminationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhysicalExaminationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PhysicalExaminationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
