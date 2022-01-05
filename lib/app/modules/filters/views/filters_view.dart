import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/filters_controller.dart';

class FiltersView extends GetView<FiltersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FiltersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FiltersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
