import 'package:get/get.dart';

import '../controllers/login1_controller.dart';

class Login1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Login1Controller>(
      () => Login1Controller(),
    );
  }
}
