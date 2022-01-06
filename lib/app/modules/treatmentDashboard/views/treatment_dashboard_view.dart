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
    Get.put(TreatmentDashboardController());
    return Scaffold(
            body: SafeArea(
              child: Obx (() =>IndexedStack(
                        index: controller.tabIndex.value,
                        children: [
                          DoctorNoteView(),
                          SurgeryView(),
                          DischargeView(),
                        ],
                      ),
                    ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, spreadRadius: 0, blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),

                  child: Obx(()=>BottomNavigationBar(
                    backgroundColor: Colors.blue,
                    unselectedItemColor: Colors.white54,
                    //unselectedItemColor: Colors.grey,
                    selectedItemColor: Colors.white,
                    onTap: controller.changeTabIndex,
                    currentIndex: controller.tabIndex.value,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    type: BottomNavigationBarType.fixed,
                    elevation: 0,
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
          ),
    );
        }


}
