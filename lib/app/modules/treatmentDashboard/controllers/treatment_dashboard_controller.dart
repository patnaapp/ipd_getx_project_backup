import 'package:get/get.dart';

class TreatmentDashboardController extends GetxController {
  //TODO: Implement TreatmentDashboardController
  var tabIndex = 0;

  // void changeTabIndex(int index) {
  //   tabIndex.value = index;
  // }
  void changeTabIndex(int index) {

      tabIndex = index;
      update();

  }


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
  //void increment() => count.value++;
}
