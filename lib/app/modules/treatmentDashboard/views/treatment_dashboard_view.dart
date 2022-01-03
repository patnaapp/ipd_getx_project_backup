import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/DoctorNote/views/doctor_note_view.dart';
import 'package:ipd_getx_project_backup/app/modules/Surgery/views/surgery_view.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge/views/discharge_view.dart';


import '../controllers/treatment_dashboard_controller.dart';


class TreatmentDashboardView extends GetView<TreatmentDashboardController> {
  @override
  Widget build(BuildContext context) {
    //Get.put(TreatmentDashboardController());

    return GetBuilder<TreatmentDashboardController>(
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child:  IndexedStack(
                        index: controller.tabIndex,
                        children: [
                          DoctorNoteView(),
                          SurgeryView(),
                          DischargeView(),
                        ],
                      ),
                    ),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),

                  child: BottomNavigationBar(
                    backgroundColor: Colors.blue,
                    unselectedItemColor: Colors.white,
                    //unselectedItemColor: Colors.grey,
                    selectedItemColor: Colors.white,
                    onTap: controller.changeTabIndex,
                    currentIndex: controller.tabIndex,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    type: BottomNavigationBarType.fixed,
                    elevation: 10,
                    items: [
                      BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("Images/DocNote.png"),
                          color: Colors.white,
                        ),
                        label: 'Doctor Note',
                      ),
                      BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("Images/surgery.png"),
                          //color: Color(0xFF3A5A98),
                        ),
                        label: 'Surgery',
                      ),
                      BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("Images/discharge-icon-16.png"),
                          //color: Color(0xFF3A5A98),
                        ),
                        label: 'Discharge',
                      ),
                    ],
                  ),
                )
            ),
          );
        }
    );
  }

}