import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/other_examination_controller.dart';

class OtherExaminationView extends GetView<OtherExaminationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('OtherExaminationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OtherExaminationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
