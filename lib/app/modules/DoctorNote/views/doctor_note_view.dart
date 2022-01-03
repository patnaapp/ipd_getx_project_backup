import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/views/advice_view.dart';
import 'package:ipd_getx_project_backup/app/modules/labtest/views/labtest_view.dart';
import 'package:ipd_getx_project_backup/app/modules/medicine/views/medicine_view.dart';
import 'package:ipd_getx_project_backup/app/modules/radiology/views/radiology_view.dart';

import '../controllers/doctor_note_controller.dart';

class DoctorNoteView extends GetView<DoctorNoteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaf1f9),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 12, 20, 8),
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
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Treatment ",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 12, 20, 4),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'Images/personMale.png',
                                  height: 38.0,
                                  width: 38.0,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Patient name",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(height: 2),
                                      Text(
                                        "Madhav Mehra",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(height: 3),
                                      Text(
                                        "Male | 25Yrs | 22 ward",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    print("show Details");
                                  },
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.lightBlue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    print("Go to PatientDetails");
                                  },
                                 child: Image.asset(
                                  'Images/circular_arrow.png',
                                  height: 24.0,
                                  width: 24.0,
                                ),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    child: GridView.count(
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      //maxCrossAxisExtent: 180.0,
                      crossAxisCount: 2,
                      children: <Widget>[

                        Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            elevation: 8,
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Image.asset('Images/labtest.png', height: 36, width: 36,),
                                  ),
                                  Container(
                                    child: GestureDetector(
                                      onTap: () async {
                                        Get.to(
                                              () => LabtestView(),
                                        );
                                      },
                                    //padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Lab Test",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                        Image.asset('Images/circular_arrow.png',height: 24.0, width: 24.0),
                                      ],
                                    ),
                                    ),
                                  ),
                                ],),
                            ),
                          ),
                        ),

                        Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            elevation: 8,
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Image.asset('Images/radiology.png', height: 36, width: 36,),
                                  ),
                                  Container(
                                    child: GestureDetector(
                                      onTap: () async {
                                        Get.to(
                                              () => RadiologyView(),
                                        );
                                      },
                                    //padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Radiology",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                        Image.asset('Images/circular_arrow.png',height: 24.0, width: 24.0),
                                      ],
                                    ),
                                    ),
                                  ),
                                ],),
                            ),
                          ),
                        ),

                        Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            elevation: 8,
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Image.asset('Images/medicine.png', height: 36, width: 36,),
                                  ),
                                  Container(
                                    //padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                                    child: GestureDetector(
                                      onTap: () async {
                                        Get.to(
                                              () => MedicineView(),
                                        );
                                      },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Medicine",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                         Image.asset('Images/circular_arrow.png',height: 24.0, width: 24.0),
                                      ],
                                    ),
                                    ),
                                  ),
                                ],),
                            ),
                          ),
                        ),

                        Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            elevation: 8,
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Image.asset('Images/referral.png', height: 36, width: 36,),
                                  ),
                                  Container(
                                    //padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                                    child: GestureDetector(
                                      onTap: () async {
                                        print("Go to Referral");
                                      },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Referal",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                        Image.asset('Images/circular_arrow.png',height: 24.0, width: 24.0),


                                      ],
                                    ),
                                    ),
                                  ),
                                ],),
                            ),
                          ),
                        ),

                        Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            elevation: 8,
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Image.asset('Images/procedure.png', height: 36, width: 36,),
                                  ),
                                  Container(
                                    child: GestureDetector(
                                      onTap: () async {
                                        print("Go to Procedure");
                                      },
                                    //padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Procedure",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                        Image.asset('Images/circular_arrow.png',height: 24.0, width: 24.0),
                                      ],
                                    ),
                                    ),
                                  ),
                                ],),
                            ),
                          ),
                        ),

                        Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            elevation: 8,
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Image.asset('Images/advice.png', height: 36, width: 36,),
                                  ),
                                  Container(
                                    //padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                                    child: GestureDetector(
                                      onTap: () async {
                                        Get.to(
                                              () => AdviceView(),
                                        );
                                      },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Advice",
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                         Image.asset('Images/circular_arrow.png',height: 24.0, width: 24.0),
                                      ],
                                    ),
                                    ),
                                  ),
                                ],),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );

  }
}
