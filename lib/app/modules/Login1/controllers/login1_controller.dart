import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Login1Controller extends GetxController {
  //TODO: Implement Login1Controller
  late TextEditingController phoneController, passwordController;
  //TextEditingController passwordController= TextEditingController();
  //final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  bool validateMobile(String value) {
    bool check=true;
    String value1=value[0];
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);

    if (value.length != 10) {
      check=false;

    } else if(!regExp.hasMatch(value)){
      check=false;
    }
    return check;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }



  //final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  //void increment() => count.value++;
}

