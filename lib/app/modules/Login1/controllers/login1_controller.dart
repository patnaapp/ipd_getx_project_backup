import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/login1/captcha_model.dart';
import 'package:ipd_getx_project_backup/app/modules/login1/providers/captcha_provider.dart';

class Login1Controller extends GetxController {
  //TODO: Implement Login1Controller
  late TextEditingController phoneController, passwordController, captchaController;
  //TextEditingController passwordController= TextEditingController();
  //final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  Rx<Captcha_model> captcha = new Captcha_model(captchaImage: "", captchaId: "", id: 0).obs;

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

  void fetchCaptcha() async {
    var captchaRes = await CaptchaProvider().getCaptcha(captcha.value.captchaId, captcha.value.id == 0 ? "" : captcha.value.id.toString());
    if(captchaRes != null){
      //print(captchaRes.captchaId);
      this.captcha.value = captchaRes;

      //print(this.captcha.captchaImage);
      //update();
    }
  }





  //final count = 0.obs;




  @override
  void onInit() {
    fetchCaptcha();
    super.onInit();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    captchaController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  //void increment() => count.value++;
}

