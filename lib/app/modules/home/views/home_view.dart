import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/views/advice_view.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/views/another_advice_view.dart';
import 'package:ipd_getx_project_backup/app/modules/death_report/views/death_report_view.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge/views/discharge_view.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge_type/views/discharge_type_view.dart';
import 'package:ipd_getx_project_backup/app/modules/patient_details/views/patient_details_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'HomeView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => AdviceView());
            },
            child: Text("Advice Page"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => AnotherAdviceView());
            },
            child: Text("Another Advice Page"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => DischargeView());
            },
            child: Text("Discharge"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => PatientDetailsView());
            },
            child: Text("Patient Details"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => DischargeTypeView());
            },
            child: Text("Discharge Type"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => DeathReportView());
            },
            child: Text("Death Report"),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
