import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/discharge_controller.dart';

class DischargeoldView extends GetView<DischargeoldController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DischargeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DischargeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
