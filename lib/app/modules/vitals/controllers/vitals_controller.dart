import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/vitals/vitals_model.dart';

class VitalsController extends GetxController {
  //TODO: Implement VitalsController
  List<Vitals> vitals = <Vitals>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    vitals.add(Vitals.withName("Body Temperature", "104 degree"));
    vitals.add(Vitals.withName("Body Pressure", "132 mmHg/88 mmHg"));
    vitals.add(Vitals.withName("Respiratory Rate", "12 to 20 bpm"));
    vitals.add(Vitals.withName("Pulse", "80 bpm"));
    vitals.add(Vitals.withName("Heart Rate", "72 bpm"));
    vitals.add(Vitals.withName("BMI (kg/m)", "5 kg/m"));
    vitals.add(Vitals.withName("Height (Centimeters)", "742 cm"));
    vitals.add(Vitals.withName("Weight (Kilograms)", "72 kg"));
  }

  void displayChart() {

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
