import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notification_of_death_controller.dart';

class NotificationOfDeathView extends GetView<NotificationOfDeathController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotificationOfDeathView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NotificationOfDeathView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
