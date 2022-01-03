import 'package:get/get.dart';


import 'package:ipd_getx_project_backup/app/modules/Discharge_old/bindings/discharge_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/Discharge_old/views/discharge_view.dart';
import 'package:ipd_getx_project_backup/app/modules/DoctorNote/bindings/doctor_note_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/DoctorNote/views/doctor_note_view.dart';
import 'package:ipd_getx_project_backup/app/modules/ScanQRCode/bindings/scan_q_r_code_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/ScanQRCode/views/scan_q_r_code_view.dart';
import 'package:ipd_getx_project_backup/app/modules/Surgery/bindings/surgery_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/Surgery/views/surgery_view.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/bindings/advice_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/views/advice_view.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/views/another_advice_view.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge/bindings/discharge_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge/views/discharge_view.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge_type/bindings/discharge_type_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/discharge_type/views/discharge_type_view.dart';
import 'package:ipd_getx_project_backup/app/modules/home/bindings/home_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/home/views/home_view.dart';
import 'package:ipd_getx_project_backup/app/modules/labtest/bindings/labtest_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/labtest/views/labtest_view.dart';
import 'package:ipd_getx_project_backup/app/modules/login1/bindings/login1_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/login1/views/login1_view.dart';
import 'package:ipd_getx_project_backup/app/modules/medicine/bindings/medicine_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/medicine/views/medicine_view.dart';
import 'package:ipd_getx_project_backup/app/modules/radiology/bindings/radiology_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/radiology/views/radiology_view.dart';
import 'package:ipd_getx_project_backup/app/modules/treatmentDashboard/bindings/treatment_dashboard_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/treatmentDashboard/views/treatment_dashboard_view.dart';
import 'package:ipd_getx_project_backup/app/modules/vitals/bindings/vitals_binding.dart';
import 'package:ipd_getx_project_backup/app/modules/vitals/views/vitals_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN1;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LABTEST,
      page: () => LabtestView(),
      binding: LabtestBinding(),
    ),
    GetPage(
      name: _Paths.RADIOLOGY,
      page: () => RadiologyView(),
      binding: RadiologyBinding(),
    ),
    GetPage(
      name: _Paths.MEDICINE,
      page: () => MedicineView(),
      binding: MedicineBinding(),
    ),
    GetPage(
      name: _Paths.TREATMENT_DASHBOARD,
      page: () => TreatmentDashboardView(),
      binding: TreatmentDashboardBinding(),
    ),
    GetPage(
      name: _Paths.DOCTOR_NOTE,
      page: () => DoctorNoteView(),
      binding: DoctorNoteBinding(),
    ),
    GetPage(
      name: _Paths.SURGERY,
      page: () => SurgeryView(),
      binding: SurgeryBinding(),
    ),
    GetPage(
      name: _Paths.DISCHARGEOLD,
      page: () => DischargeoldView(),
      binding: DischargeoldBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN1,
      page: () => Login1View(),
      binding: Login1Binding(),
    ),
    GetPage(
      name: _Paths.SCAN_Q_R_CODE,
      page: () => ScanQRCodeView(),
      binding: ScanQRCodeBinding(),
    ),
    GetPage(
      name: _Paths.DISCHARGE,
      page: () => DischargeView(),
      binding: DischargeBinding(),
    ),
    GetPage(
      name: _Paths.ADVICE,
      page: () => AdviceView(),
      binding: AdviceBinding(),
    ),
    GetPage(
      name: _Paths.DISCHARGETYPE,
      page: () => DischargeTypeView(),
      binding: DischargeTypeBinding(),
    ),
    GetPage(
      name: _Paths.VITALS,
      page: () => VitalsView(),
      binding: VitalsBinding(),
    ),
    GetPage(
      name: _Paths.ADVICE1,
      page: () => AnotherAdviceView(),
      binding: AdviceBinding(),
    ),
  ];
}
