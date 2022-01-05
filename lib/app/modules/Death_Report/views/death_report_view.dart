import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/death_report_controller.dart';

class DeathReportView extends GetView<DeathReportController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeathReportView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DeathReportView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
