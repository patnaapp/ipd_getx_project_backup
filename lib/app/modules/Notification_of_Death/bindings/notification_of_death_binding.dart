import 'package:get/get.dart';

import '../controllers/notification_of_death_controller.dart';

class NotificationOfDeathBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationOfDeathController>(
      () => NotificationOfDeathController(),
    );
  }
}
