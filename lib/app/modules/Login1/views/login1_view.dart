import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/ScanQRCode/views/scan_q_r_code_view.dart';
import 'package:ipd_getx_project_backup/app/modules/treatmentDashboard/views/treatment_dashboard_view.dart';

import '../controllers/login1_controller.dart';

class Login1View extends GetView<Login1Controller> {
  @override
  Widget build(BuildContext context) {
    Get.put(Login1Controller());
    return Scaffold(
      //appBar: AppBar(
        //title: Text('Login1View'),
        //centerTitle: true,
      //),
      body: SafeArea(
        child: Form(
          key: controller.loginFormKey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 80.0, bottom: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("Images/login_img.png",
                      width: 300.0, height: 300.0, fit: BoxFit.cover),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Login',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(height: 10),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Please Login To proceed',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.left)),
                        ],
                      )),
                     Container(
                         height: 55,
                         margin: const EdgeInsets.only(left: 30, right: 30, top: 15),
                         child: TextFormField(
                         controller: controller.phoneController,
                         keyboardType: TextInputType.number,
                         autofocus: false,
                         style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                         decoration: InputDecoration(
                            fillColor: Color(0xffeaf1f9),
                            filled: true,
                            hintText: "User ID",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                           onSaved: (value) {
                           controller.phoneController =
                              value! as TextEditingController;
                           },
                           validator: (value) {
                            if (value == null || value.length != 10) {
                            return 'required';
                            }
                            return null;
                           },
                      )),
                  SizedBox(height: 10),
                  Container(
                      height: 55,
                      margin: const EdgeInsets.only(top: 5.0, left: 30, right: 30),
                      child: TextFormField(
                        controller: controller.passwordController,
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                        decoration: InputDecoration(
                            fillColor: Color(0xffeaf1f9),
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                        onSaved: (value) {
                          controller.passwordController =
                          value! as TextEditingController;
                        },
                        // validator: (value) {
                        //   if (value == null || value.length == 0) {
                        //     return 'required';
                        //   }
                        //   return null;
                        // },
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0,left: 30,right: 30),
                    width : double.infinity,
                    child: OutlinedButton(
                      child: Text(
                        " LOGIN ",
                        style: TextStyle(fontSize: 20.0),
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
                              () => TreatmentDashboardView(),
                        );

                        //Navigator.push(
                          //context,
                          //MaterialPageRoute(
                              //builder: (context) => MarkAttenadanceDashboard()),
                       // );
                      },

                    ),
                  ),
                  //Padding(
                    //padding: new EdgeInsets.only(top: 20.0),
                  //),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
