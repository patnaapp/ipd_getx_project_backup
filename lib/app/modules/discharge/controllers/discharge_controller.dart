import 'package:get/get.dart';

class DischargeController extends GetxController {
  //TODO: Implement DischargeController
  RxList<String> dischargeList = List<String>.from([
    'Normal Discharge',
    'Abscording Case Entry',
    'Missing from IPD Case Entry',
    'Pending Patient Status Updation',
    'Discharge By Referral',
    'Issue Temporary Death Certificate',
    'Denied Admission After BHT Issue Case Entry',
    'DOR Case Entry (Discharged On Request)',
    'LAMA CASE Entry',
  ]).obs;
  final radiogroupvalue = 0.obs;

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

  void changeRadioGroupValue(int val) {
    radiogroupvalue.value = val;
  }

}
