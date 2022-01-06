import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/investigations_controller.dart';

class InvestigationsView extends GetView<InvestigationsController> {
  @override
  Widget build(BuildContext context) {
    Get.put(InvestigationsController());
    return Scaffold(
      backgroundColor: kAppBackgroundColour,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetBuilder<InvestigationsController>(
                    builder: (_) => ListView(
                      scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      // padding: const EdgeInsets.all(8),
                      children: [
                        ...controller.investigation_type
                            .map(controller.buildFilterCheckBox)
                            .toList(),
                      ],
                    ),
                  ),
                ],
              ),
              // Container(
              //   //#TODO: Change Filter Items Alignment horizontal
              //   child:
              // ),
              // Content Container
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    // padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ListView.builder(
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Card(
                              // margin: const EdgeInsets.only(left: 10, rig),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 10, 20),
                                // margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.investigation[index].testName}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'SYS: ${controller.investigation[index].tests?.sys}'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                            'DIA: ${controller.investigation[index].tests?.dia}'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                            'Pulse/min: ${controller.investigation[index].tests?.pulse}'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Sugar Test',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                                '${controller.investigation[index].tests?.sugarTest}'),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Date',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Text(
                                                '${controller.investigation[index].date}'),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: controller.investigation.length,
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
