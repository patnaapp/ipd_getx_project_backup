import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/General_Examination/views/general_examination_view.dart';
import 'package:ipd_getx_project_backup/app/modules/Other_Examination/views/other_examination_view.dart';

import '../controllers/physical_examination_controller.dart';

class PhysicalExaminationView extends GetView<PhysicalExaminationController> {
  @override
  Widget build(BuildContext context) {
    Get.put(PhysicalExaminationController());
    return Scaffold(
      backgroundColor: const Color(0xffeaf1f9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
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

            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              //color: Colors.white,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Physical Examination ",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                height:12
            ),

            Container(
              margin: EdgeInsets.only(left: 8, right: 8, bottom: 12),
              color: Color(0xffeaf1f9), // Tab Bar color change
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: Colors.blue),
                // TabBar
                controller: controller.tabController,
                unselectedLabelColor: Colors.black,
                labelColor: const Color(0xFF3baee7),
                //indicatorWeight: 2,
                //indicatorColor: Colors.yellow,
                tabs: <Widget>[
                  Tab(
                    child: Text('General Examination',
                        style: TextStyle(
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                  Tab(
                    child: Text('Other Examination',
                        style: TextStyle(
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                ],
              ),
            ),

            Expanded(
              //height: 500.0,
              child: TabBarView(
                // Tab Bar View
                physics: BouncingScrollPhysics(),
                controller: controller.tabController,
                children: <Widget>[
                  GeneralExaminationView(),
                  OtherExaminationView()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
