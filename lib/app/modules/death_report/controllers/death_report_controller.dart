import 'package:get/get.dart';

class DeathReportController extends GetxController {
  //TODO: Implement DeathReportController
  final expansionTileIndex = 0.obs;
  final selectedTile = 0.obs;
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
