import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/general_examination_controller.dart';

class GeneralExaminationView extends GetView<GeneralExaminationController> {
  @override

  Widget build(BuildContext context) {
    Get.put(GeneralExaminationController());
    var appBar = AppBar();
    return Scaffold(
      backgroundColor: Color(0xffeaf1f9),
      body: SafeArea(
        child: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),
          physics: ScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: <Widget>[
                GetBuilder<GeneralExaminationController>(
                  builder:(_) =>
                      ListView.builder(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return controller.buildListItem(
                              controller.generalExamination[index], context, index);
                        },
                        itemCount: controller.generalExamination.length,
                      ),

                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
