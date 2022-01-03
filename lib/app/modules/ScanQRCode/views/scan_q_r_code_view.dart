import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/treatmentDashboard/views/treatment_dashboard_view.dart';

import '../controllers/scan_q_r_code_controller.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';

class ScanQRCodeView extends GetView<ScanQRCodeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ScanQRCodeController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              // The containers in the background
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .67,
                    color: Color(0xff616161),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),

                    GestureDetector(
                      onTap: () {
                        Get.to(
                              () => TreatmentDashboardView(),
                        );
                        },
                        child: Center(
                            child: Image.asset("Images/e_hospital_icon.png",
                                width: 140.0, height: 60.0, fit: BoxFit.cover))),
                        SizedBox(height: 20),
                        Align(
                            alignment: Alignment.center,
                            child: Text('Scan QR Code',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(height: 15),
                        Center(
                          child: GestureDetector(
                            onTap: () async {
                              print("scan QR");
                              String codeSanner = await BarcodeScanner.scan();    //barcode scanner
                              controller.qrCodeResult = codeSanner;
                              },
                            child: Image.asset('Images/qr_icon.png',width: 200.0, height: 200.0, fit: BoxFit.cover),
                          ),
                        ),
                         SizedBox(height: 30),
                         Divider(
                            color: Colors.white,
                            thickness: 3,
                            indent: 150,
                            endIndent: 150,
                          ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Or Search by :',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .63,
                    right: 20.0,
                    left: 20.0),
                child: new Container(
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  child: new Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 6.0,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(2.5),
                                  ),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Select Ward",
                                fillColor: Color(0xffeaf1f9),
                                contentPadding: EdgeInsets.all(12),
                              ),
                              validator: (value) {
                                if (value == "0") {
                                  return 'Please select ward';
                                }
                                return null;
                              },
                              value: controller.relationtype_value,
                              items: [
                                DropdownMenuItem<String>(
                                  child: Text("Select Ward",
                                      overflow: TextOverflow.ellipsis),
                                  value: "0",
                                ),
                                DropdownMenuItem<String>(
                                    child: Text("1",
                                        overflow: TextOverflow.ellipsis),
                                    value: "6"),
                                DropdownMenuItem<String>(
                                  child: Text("2",
                                      overflow: TextOverflow.ellipsis),
                                  value: "1",
                                ),
                                DropdownMenuItem<String>(
                                    child: Text("3",
                                        overflow: TextOverflow.ellipsis),
                                    value: "2"),
                                DropdownMenuItem<String>(
                                    child: Text("4",
                                        overflow: TextOverflow.ellipsis),
                                    value: "3"),
                                DropdownMenuItem<String>(
                                    child: Text("5",
                                        overflow: TextOverflow.ellipsis),
                                    value: "4"),
                              ],
                              onChanged: (value) {

                              }),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                  height: 45,
                                  margin: const EdgeInsets.only(
                                      top: 2.0, left: 12, right: 12),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                                    decoration: InputDecoration(
                                        fillColor: Color(0xffeaf1f9),
                                        filled: true,
                                        suffixIcon: FlatButton(
                                          child: Text(
                                            'SEARCH',
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.white),
                                          ),
                                          color: Colors.blue,
                                          shape: Border.all(
                                            color: Colors.blue,
                                            width: 15,
                                          ),
                                          onPressed: () {},
                                        ),
                                        hintText: "Enter UHID",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        )),
                                    validator: (value) {
                                      if (value == null || value.length == 0) {
                                        return 'required';
                                      }
                                      return null;
                                    },
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue,
                                      spreadRadius: 3),
                                ],
                              ),
                              margin: EdgeInsets.only(left: 2, right: 12),
                              height: 40,
                              width: 40,
                              child: GestureDetector(
                                onTap: () {
                                  controller.settingModalBottomSheetForPWD(context);
                                },
                                child: Icon(
                                  Icons.filter_list_alt,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
