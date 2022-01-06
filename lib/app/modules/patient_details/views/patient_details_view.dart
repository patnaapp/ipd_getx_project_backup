import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/investigations/views/investigations_view.dart';
import 'package:ipd_getx_project_backup/app/modules/speech_to_text/views/speech_to_text_view.dart';
import 'package:ipd_getx_project_backup/app/modules/vitals/views/vitals_view.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/patient_details_controller.dart';

class PatientDetailsView extends GetView<PatientDetailsController> {
  @override
  Widget build(BuildContext context) {
    Get.put(PatientDetailsController());
    return Scaffold(
      backgroundColor: kAppBackgroundColour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Navigation Button
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                      const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                      alignment: Alignment.centerLeft,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        // elevation: 2.0,
                        child: InkWell(
                          onTap: () {
                            Get.back();
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
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              // Get.to(() => Spee:q!
                              // oTextView());
                            },
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Page Title
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
              child: Text(
                "Patient Details",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),

            // Tab Bar Container
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: DefaultTabController(
                length: controller.patientDetailTabs.length,
                initialIndex: controller.tabIndex.value,
                child: Column(
                  children: [
                    // Tab Bar Buttons
                    Container(
                      padding: const EdgeInsets.all(10),
                      // margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 9,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),

                                labelPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                indicatorSize: TabBarIndicatorSize.tab,
                                isScrollable: true,
                                labelColor: Colors.blue,
                                unselectedLabelColor: Colors.white,
                                onTap: controller.changeTabIndex,

                                tabs: controller.patientDetailTabs,
                              ),
                            ),
                          ),
                          Expanded(child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: IconButton(
                              onPressed: () async {
                                print('Icon Button pressed');
                              },
                              icon: Icon(Icons.more_vert_outlined, color: Colors.white,),
                            ),
                          ),),
                        ],
                      ),
                    ),
                    // Tab Bar View Area
                    Container(
                      height: 500,
                      child: Obx( () =>
                          IndexedStack(
                            index: controller.tabIndex.value,
                            children: [
                              VitalsView(),
                              InvestigationsView(),
                              Container(
                                child: Center(child: Text('#TODO: Medications View')),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
