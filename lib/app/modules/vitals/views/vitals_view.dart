import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/vitals_controller.dart';

class VitalsView extends GetView<VitalsController> {
  @override
  Widget build(BuildContext context) {
    Get.put(VitalsController());
    return Scaffold(
        backgroundColor: kAppBackgroundColour,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Obx(
                          () => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ExpansionTile(
                              title: Text('${controller.vitals[index].name}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text('${controller.vitals[index].value}'),
                              textColor: Colors.black,
                              iconColor: Colors.grey,
                              collapsedIconColor: Colors.blue,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  height: 100,
                                  width: double.maxFinite,
                                  child: LineChart(LineChartData(
                                    borderData: FlBorderData(show: false),
                                      lineBarsData: [
                                        LineChartBarData(
                                            spots: [
                                              FlSpot(0, 1),
                                              FlSpot(1, 3),
                                              FlSpot(2, 10),
                                              FlSpot(3, 7),
                                            ]
                                        )
                                      ]
                                  ),),
                                ),
                              ],
                            ),
                            // child: DropdownButtonFormField<String>(
                            //   // value: ,
                            //   decoration: InputDecoration(
                            //     fillColor: Colors.white,
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.zero,
                            //       borderSide: BorderSide.none,
                            //     ),
                            //     // iconColor: Colors.blue,
                            //     label: Text('${controller.vitals[index].name}'),
                            //     labelStyle: TextStyle(
                            //       color: Colors.black,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            //   onChanged: (value) {},
                            //   items: [],
                            //   // value: ,
                            // ),
                          ),
                        ),
                      );
                    },
                    itemCount: controller.vitals.length,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
