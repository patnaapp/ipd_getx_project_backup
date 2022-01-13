import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/Login1/captcha_model.dart';
import 'package:ipd_getx_project_backup/app/modules/ScanQRCode/views/scan_q_r_code_view.dart';
import 'package:ipd_getx_project_backup/app/modules/home/views/home_view.dart';
import 'package:ipd_getx_project_backup/app/modules/login1/providers/captcha_provider.dart';
import 'package:ipd_getx_project_backup/app/modules/treatmentDashboard/views/treatment_dashboard_view.dart';
import 'package:ipd_getx_project_backup/app/routes/app_pages.dart';

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
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 15),
                      child: TextFormField(
                        controller: controller.phoneController,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
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
                        // validator: (value) {
                        //   if (value == null || value.length != 10) {
                        //     return 'required';
                        //   }
                        //   return null;
                        // },
                      )),
                  SizedBox(height: 10),
                  Container(
                      height: 55,
                      margin:
                          const EdgeInsets.only(top: 5.0, left: 30, right: 30),
                      child: TextFormField(
                        controller: controller.passwordController,
                        keyboardType: TextInputType.text,
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
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
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                            margin: const EdgeInsets.only(
                                top: 5.0, left: 30, right: 30),
                            child: TextFormField(
                              controller: controller.captchaController,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 20.0),
                              decoration: InputDecoration(
                                  fillColor: Color(0xffeaf1f9),
                                  filled: true,
                                  hintText: "Captcha",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  )),
                              onSaved: (value) {
                                controller.captchaController =
                                    value! as TextEditingController;
                              },
                              // validator: (value) {
                              //   if (value == null || value.length == 0) {
                              //     return 'required';
                              //   }
                              //   return null;
                              // },
                            )),
                      ),
                      Obx(() =>
                      Expanded(
                            flex: 5,
                           child: GestureDetector(
                            onTap: () {
                              controller.fetchCaptcha();
                              print(controller.captcha.value.id);
                              print(controller.captcha.value.captchaId);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 5.0, left: 30, right: 30),
                              child: controller.captcha.value.captchaImage != "" ? Image.memory(base64Decode(controller.captcha.value.captchaImage),) : Container(),
                             // child: controller.captcha.value.captchaImage.isEmpty ? Container() : Image.memory(base64Decode("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"),),
                          ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20.0, left: 30, right: 30),
                    width: double.infinity,
                    child: OutlinedButton(
                      child: Text(
                        " LOGIN ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                          minimumSize: Size(88, 50),
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () async {
                        Map body = {
                          "captcha_id": controller.captcha.value.captchaId,
                          "captcha_value": controller.captchaController.text.toString().trim(),
                          "id": controller.captcha.value.id,
                          "password": controller.passwordController.text.toString().trim(),
                          "user_id": controller.phoneController.text.toString().trim()
                        };
                        var user = await CaptchaProvider().PostAuthenticateWithBody(body);
                        if(user != null){
                          print(user.fName);
                          Get.to(
                                () => ScanQRCodeView(),
                          );
                        }

                        //Get.toNamed(Routes.TREATMENT_DASHBOARD);
                        //Try once

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
