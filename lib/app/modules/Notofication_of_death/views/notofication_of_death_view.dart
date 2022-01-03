import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notofication_of_death_controller.dart';

class NotoficationOfDeathView extends GetView<NotoficationOfDeathController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotoficationOfDeathView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NotoficationOfDeathView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
