import 'package:get/get.dart';

class NotificationOfDeathController extends GetxController {
  //TODO: Implement NotificationOfDeathController
  RxList<String> radioList = List<String>.from([
    'YES',
    'NO',
  ]).obs;
  final radioGroupValue1 = 0.obs;
  final radioGroupValue2 = 0.obs;
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
  void changeRadioGroupValue1(int val) {
    radioGroupValue1.value = val;
  }
  void changeRadioGroupValue2(int val) {
    radioGroupValue2.value = val;
  }
}
