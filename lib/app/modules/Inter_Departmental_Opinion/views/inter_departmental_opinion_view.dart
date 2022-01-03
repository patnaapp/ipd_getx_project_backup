import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inter_departmental_opinion_controller.dart';

class InterDepartmentalOpinionView
    extends GetView<InterDepartmentalOpinionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InterDepartmentalOpinionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InterDepartmentalOpinionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
