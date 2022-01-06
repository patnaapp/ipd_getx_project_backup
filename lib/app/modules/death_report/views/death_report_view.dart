import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/Notification_of_Death/views/notification_of_death_view.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/death_report_controller.dart';

class DeathReportView extends GetView<DeathReportController> {
  @override
  Widget build(BuildContext context) {
    Get.put(DeathReportController());
    return Scaffold(
      backgroundColor: kAppBackgroundColour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
                    Get.back();
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
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0, 10.0),
              child: Text(
                "Death Report",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            //List Tile
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
                              borderRadius: BorderRadius.circular(15.0)),
                          child: ExpansionTile(
                            //tilePadding: const EdgeInsets.all(4),
                            // key: Key(0.toString()),
                            title: Text(
                              'Deceased Information',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            initiallyExpanded: true,
                            textColor: Colors.black,
                            collapsedTextColor: Colors.black,
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.blue,

                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Date of Death*"),
                                    Spacer(),
                                    Text(
                                      '09/05/2021',
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
                                    Text("Time of Death*"),
                                    Spacer(),
                                    Text(
                                      '01:50 PM',
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
                                    Text("Name of the Deceased*"),
                                    Spacer(),
                                    Text(
                                      'Lorem Ispum',
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
                                    Text("Sex of Deceased"),
                                    Spacer(),
                                    Text(
                                      'Male or Female',
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
                                    Text("Name of Mother"),
                                    Spacer(),
                                    Text(
                                      'Mrs. Lorem Ispum',
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
                                    Text("Name of Father"),
                                    Spacer(),
                                    Text(
                                      'Mr. Lorem Ispum',
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
                                    Text("Name of Husband/Wife"),
                                    Spacer(),
                                    Text(
                                      'Mr & Mrs',
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
                                    Text("Age of Husband/Wife"),
                                    Spacer(),
                                    Text(
                                      'Lorem Ispum',
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
                                    Text("Contact Details of\nHusband/Wife"),
                                    Spacer(),
                                    Text(
                                      'Lorem Ispum',
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
                                    Text("Age of Deceased"),
                                    Spacer(),
                                    Text(
                                      'Lorem Ispum',
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
                              'Address of the Deceased',
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
                                  color: Color.fromARGB(32, 159, 164, 173),
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
                                            Text("Building Name"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("House No."),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
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
                                              color: Colors.blueGrey,
                                              width: 2,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: Text(
                                                    "Village/Town/Street lane*",
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
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  //color: Colors.white,

                                                  alignment:
                                                  Alignment.centerRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.keyboard_voice,
                                                      color: Colors.blue,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
                                            Text("Village"),
                                            Spacer(),
                                            Text(
                                              'Lorem Ispum',
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
            // Submit Button
            Container(
              // margin: const EdgeInsets.only(top: 20.0,left: 30,right: 30),
              margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
              width : double.infinity,
              child: OutlinedButton(
                child: Text(
                  "DISCHARGE THE PATIENT",
                  style: TextStyle(fontSize: 18.0),
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
                        () => NotificationOfDeathView(),
                  );
                },

              ),
            ),

          ],
        ),
      ),
    );
  }
}
