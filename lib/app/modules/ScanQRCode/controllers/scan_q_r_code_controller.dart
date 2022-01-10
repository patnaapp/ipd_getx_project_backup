import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:ipd_getx_project_backup/app/modules/filters/views/filters_view.dart';

class ScanQRCodeController extends GetxController {
  //TODO: Implement ScanQRCodeController
  String relationtype_value = "0";
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  String qrCodeResult = "Not Yet Scanned, Please Scan QR Code" ;





  void settingModalBottomSheetForPWD(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        builder: (BuildContext context) {
          return FiltersView();/*Container(


            height: MediaQuery.of(context).copyWith().size.height * 0.50,
            child: Column(
              children: [
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Filters",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Close",style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,fontWeight: FontWeight.bold)),
                      )
                    ]
                ),
                Divider(
                  height: 7,
                  thickness: 1.5,
                  color: Colors.white,
                ),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Filters",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Close",style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,fontWeight: FontWeight.bold)),
                      )
                    ]
                ),
              ],
            ),
          );*/
        });
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
