import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vitals_controller.dart';

class VitalsView extends GetView<VitalsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VitalsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VitalsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
