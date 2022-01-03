import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AdviceController extends GetxController {
  //TODO: Implement AdviceController
  String selectedDischargeType = 'Normal Discharge';
  List<String> dischargeTypeList = [
    'Normal Discharge',
    'Special Discharge',
    'Test Discharge'
  ];
  DateTime selectedDate = DateTime.now();
  TextEditingController datepickerTextField = TextEditingController();

  final count = 0.obs;

  Future selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate != null ? selectedDate : DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if(pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      this.selectedDate = pickedDate;
      datepickerTextField.text = formattedDate;
    }
  }

  @override
  void onInit() {
    super.onInit();
    datepickerTextField.text = "";
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
