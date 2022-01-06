import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/investigations/investigations_model.dart';

import '../investigation_type_model.dart';

class InvestigationsController extends GetxController {
  //TODO: Implement InvestigationsController
  List<InvestigationType> investigation_type = <InvestigationType>[].obs;

  List<Investigations> investigation = <Investigations>[].obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialising Investigation Data
    investigation.add(
      Investigations.withName(
          "Blood Pressure Test",
          Tests.withName("120mmHg", "70mmHg", "60", "108mg/dL"),
          "23-June-2021"),
    );
    investigation.add(
      Investigations.withName(
          "Blood Pressure Test 2",
          Tests.withName("120mmHg", "70mmHg", "60", "108mg/dL"),
          "23-June-2021"),
    );
    investigation.add(
      Investigations.withName(
          "Blood Pressure Test 3",
          Tests.withName("120mmHg", "70mmHg", "60", "108mg/dL"),
          "23-June-2021"),
    );
    investigation.add(
      Investigations.withName(
          "Blood Pressure Test 4",
          Tests.withName("120mmHg", "70mmHg", "60", "108mg/dL"),
          "23-June-2021"),
    );
    investigation.add(
      Investigations.withName(
          "Blood Pressure Test 5",
          Tests.withName("120mmHg", "70mmHg", "60", "108mg/dL"),
          "23-June-2021"),
    );

    // Investigation Type Initialisation
    investigation_type.add(InvestigationType.withName("Lab Test", true));
    investigation_type.add(InvestigationType.withName("Diagnosis", false));
  }


  Widget buildFilterCheckBox(InvestigationType investigationType) => Expanded(
    child: CheckboxListTile(
          value: investigationType.value,
          title: Text(
            investigationType.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          onChanged: (value) {
            investigationType.value = value!;
            update();
          },
          controlAffinity: ListTileControlAffinity.trailing,
          activeColor: Colors.blue,
        ),
  );

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
