import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:ipd_getx_project_backup/app/modules/DeathReport/views/death_report_view.dart';
// import 'package:ipd_getx_project_backup/app/modules/home/views/home_view.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/discharge_type_controller.dart';

class DischargeTypeView extends GetView<DischargeTypeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaf1f9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              //color: Colors.white,
              alignment: Alignment.centerLeft,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.lightBlueAccent,
                elevation: 10,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              //color: Colors.white,
              alignment: Alignment.centerLeft,
              child: Text(
                " Discharge Type",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                //physics: NeverScrollableScrollPhysics(),
                physics: ScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: ExpansionTile(
                            //tilePadding: const EdgeInsets.all(4),

                            title: Text(
                              'Patient Demographic Details',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.black38,
                            collapsedTextColor: Colors.black,
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.blue,

                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Admission ID"),
                                    Spacer(),
                                    Text(
                                      '202130',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Registration No."),
                                    Spacer(),
                                    Text(
                                      '20210000220',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Patient Name"),
                                    Spacer(),
                                    Text(
                                      'Mr. Covid Patient',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Date of Birth"),
                                    Spacer(),
                                    Text(
                                      '25/May/1965',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Gender"),
                                    Spacer(),
                                    Text(
                                      'Male',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Age"),
                                    Spacer(),
                                    Text(
                                      '56 Years',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Religion"),
                                    Spacer(),
                                    Text(
                                      'Unknown',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Address"),
                                    Spacer(),
                                    Text(
                                      '101 Pinnacle tower,'
                                          '\n Noida Uttar Pradesh',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Citizenship"),
                                    Spacer(),
                                    Text(
                                      'Indian',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: ExpansionTile(
                            //tilePadding: const EdgeInsets.all(4),

                            title: Text(
                              'Patient Visit Information',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.black38,
                            collapsedTextColor: Colors.black,
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.blue,

                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("MLC Patient(MLC/NONMLC)"),
                                    Spacer(),
                                    Text(
                                      'NON-MLC)',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Admission Date"),
                                    Spacer(),
                                    Text(
                                      '15/May/1965',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Admission Time"),
                                    Spacer(),
                                    Text(
                                      '02:05 PM',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Ward"),
                                    Spacer(),
                                    Text(
                                      'Covid Patient Ward',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Cabin/ICU/Bed No."),
                                    Spacer(),
                                    Text(
                                      '01',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Referring Doctor"),
                                    Spacer(),
                                    Text(
                                      'Dr. Tarun Vijay',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Attending Doctor"),
                                    Spacer(),
                                    Text(
                                      'Dr. Ashutosh Jain',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Consulting Doctor"),
                                    Spacer(),
                                    Text(
                                      'Dr. Shailendra Mishra',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Admitting Doctor"),
                                    Spacer(),
                                    Text(
                                      'Dr. Veena Malik',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: ExpansionTile(
                            //tilePadding: const EdgeInsets.all(4),
                            title: Text(
                              'Patient Diagnosis and Procedures',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.black38,
                            collapsedTextColor: Colors.black,
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.blue,

                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(02, 159, 164, 173),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  // border: Border.all(
                                  // ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        //padding: const EdgeInsets.all(8.0),
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Admitted For*",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        //padding: const EdgeInsets.all(8.0),
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Physical Findings*",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        //padding: const EdgeInsets.all(8.0),
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Disease/Diagnosis",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("ICD Code"),
                                            Spacer(),
                                            Text(
                                              'Search ICD10 Code',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Snomed CT"),
                                            Spacer(),
                                            Text(
                                              'Remove Diagnosis',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 5, 5, 4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15.0),
                                          ),
                                          border: Border.all(
                                            color: kPrimaryColour,
                                            width: 2,
                                          ),
                                        ),
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 1, 8, 6),
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Investigation Procedures\n(Select from entry-order)",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey,
                                                  //fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: const EdgeInsets.all(5),
                                              margin: EdgeInsets.only(top: 15),
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                color: kPrimaryColour,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          "Category",
                                                          style: TextStyle(
                                                            //fontSize: 14,
                                                            color: Colors.grey,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "Investigation",
                                                          style: TextStyle(
                                                            //fontSize: 14,
                                                            color: Colors.grey,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "Observation",
                                                          style: TextStyle(
                                                            //fontSize: 14,
                                                            color: Colors.grey,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          "Lorem lpsum",
                                                          style: TextStyle(
                                                            //fontSize: 14,
                                                            color: Colors.black,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "Lorem lpsum",
                                                          style: TextStyle(
                                                            //fontSize: 14,
                                                            color: Colors.black,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "Lorem lpsum",
                                                          style: TextStyle(
                                                            //fontSize: 14,
                                                            color: Colors.black,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 15),
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                color: kPrimaryColour,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Category",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                              "Lorem Ipsum"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Investigation",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Lorem Ipsum",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              fontStyle:
                                                              FontStyle
                                                                  .italic,
                                                              // color: Colors.grey,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Observation",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                              "Lorem Ipsum"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 15),
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                color: kPrimaryColour,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Category",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                              "Lorem Ipsum"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Investigation",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Lorem Ipsum",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              fontStyle:
                                                              FontStyle
                                                                  .italic,
                                                              // color: Colors.grey,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Observation",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                              "Lorem Ipsum"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 15, bottom: 15),
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                color: kPrimaryColour,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Category",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                              "Lorem Ipsum"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Investigation",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Lorem Ipsum",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              fontStyle:
                                                              FontStyle
                                                                  .italic,
                                                              // color: Colors.grey,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "Observation",
                                                            style: TextStyle(
                                                              //fontSize: 14,
                                                              color:
                                                              Colors.grey,
                                                              //fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                              "Lorem Ipsum"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        //padding: const EdgeInsets.all(8.0),
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Treatment Given in Brief",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: ExpansionTile(
                            //tilePadding: const EdgeInsets.all(4),
                            title: Text(
                              'Patient Demographic Details',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.black38,
                            collapsedTextColor: Colors.black,
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.blue,

                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(02, 159, 164, 173),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  // border: Border.all(
                                  // ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Discharge Type"),
                                            Spacer(),
                                            Text(
                                              'Normal Discharge',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Discharge Date"),
                                            Spacer(),
                                            Text(
                                              '20/July/2021',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Discharge Time"),
                                            Spacer(),
                                            Text(
                                              '09:25 PM',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Condition During Discharge*",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Advise During Discharge*",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                00, 159, 164, 173),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            border: Border.all(
                                              //color: Color(0xffeaf1f9),
                                              //color: Colors.white,
                                              color: kPrimaryColour,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: ListTile(
                                            title: Text(
                                              "Summary*",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Lorem lpsum is simply dummy test of the printing and type setting industry.",
                                              style: TextStyle(
                                                //fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Doctor"),
                                            Spacer(),
                                            Text(
                                              'Dr. Sanjeev Batra',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Adduction"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ipsum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Treating Doctor"),
                                            Spacer(),
                                            Text(
                                              'Dr. Ashish Tiwati',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Operation Date"),
                                            Spacer(),
                                            Text(
                                              '12/July/2021',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Senior Resident"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ipsum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Next Visit Date"),
                                            Spacer(),
                                            Text(
                                              '02/August/2021',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Next Special Visit Date"),
                                            Spacer(),
                                            Text(
                                              '05/August/2021',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              //margin: EdgeInsets.all(25),
              margin: EdgeInsets.fromLTRB(45, 20, 45, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.all(12),
                  elevation: 6,
                ),
                clipBehavior: Clip.none,
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: () {
                  // Get.to(DeathReportView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
