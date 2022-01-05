import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge_type/views/discharge_type_view.dart';
import 'package:ipd_getx_project_backup/app/modules/treatmentDashboard/views/treatment_dashboard_view.dart';

import '../controllers/discharge_controller.dart';

class DischargeView extends GetView<DischargeController> {
  final _dischargeFormKey = GlobalKey<FormState>();
  DischargeController _dischargeController = Get.put(DischargeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Header Container for Back Button
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                alignment: Alignment.centerLeft,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  // elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Get.offAll(TreatmentDashboardView());
                      // Get.back();
                      // Get.to(TreatmentDashboardView());
                    },
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // Page Title
              Container(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 20.0, 20.0),
                child: Text(
                  "Discharge",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
              // Form
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Form(
                    key: _dischargeFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ListView.builder(
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                _dischargeController.changeRadioGroupValue(index);
                              },
                              child: Obx(
                                () => ListTile(
                                  title: Text(
                                      '${_dischargeController.dischargeList[index]}'),
                                  trailing: Radio<int>(
                                    value: index,
                                    activeColor: Colors.blue,
                                    groupValue: _dischargeController.radiogroupvalue.value,
                                    onChanged: (val) => _dischargeController.changeRadioGroupValue(val!),),
                                ),
                              ),
                            );
                          },
                          itemCount: _dischargeController.dischargeList.length,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          // margin: const EdgeInsets.only(top: 20.0,left: 30,right: 30),
                          width : double.infinity,
                          child: OutlinedButton(
                            child: Text(
                              " CONTINUE ",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                primary: Colors.white,
                                minimumSize: Size(88,50),
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),

                            onPressed: () async{
                              Get.to(
                                    () => DischargeTypeView(),
                              );
                              //Get.toNamed(Routes.TREATMENT_DASHBOARD);
                              //Try once


                              //Navigator.push(
                              //context,
                              //MaterialPageRoute(
                              //builder: (context) => MarkAttenadanceDashboard()),
                              // );
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
