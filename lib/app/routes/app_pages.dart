import 'package:get/get.dart';

import '../modules/Discharge_old/bindings/discharge_binding.dart';
import '../modules/Discharge_old/views/discharge_view.dart';
import '../modules/DoctorNote/bindings/doctor_note_binding.dart';
import '../modules/DoctorNote/views/doctor_note_view.dart';
import '../modules/General_Examination/bindings/general_examination_binding.dart';
import '../modules/General_Examination/views/general_examination_view.dart';
import '../modules/Inter_Departmental_Opinion/bindings/inter_departmental_opinion_binding.dart';
import '../modules/Inter_Departmental_Opinion/controllers/inter_departmental_opinion_controller.dart';
import '../modules/Inter_Departmental_Opinion/views/inter_departmental_opinion_view.dart';
import '../modules/Other_Examination/bindings/other_examination_binding.dart';
import '../modules/Other_Examination/views/other_examination_view.dart';
import '../modules/Physical_Examination/bindings/physical_examination_binding.dart';
import '../modules/Physical_Examination/views/physical_examination_view.dart';
import '../modules/ScanQRCode/bindings/scan_q_r_code_binding.dart';
import '../modules/ScanQRCode/views/scan_q_r_code_view.dart';
import '../modules/Surgery/bindings/surgery_binding.dart';
import '../modules/Surgery/views/surgery_view.dart';
import '../modules/advice/bindings/advice_binding.dart';
import '../modules/advice/views/advice_view.dart';
import '../modules/advice/views/another_advice_view.dart';
import '../modules/death_report/bindings/death_report_binding.dart';
import '../modules/death_report/bindings/death_report_binding.dart';
import '../modules/death_report/views/death_report_view.dart';
import '../modules/death_report/views/death_report_view.dart';
import '../modules/discharge/bindings/discharge_binding.dart';
import '../modules/discharge/views/discharge_view.dart';
import '../modules/discharge_type/bindings/discharge_type_binding.dart';
import '../modules/discharge_type/views/discharge_type_view.dart';
import '../modules/filters/bindings/filters_binding.dart';
import '../modules/filters/views/filters_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/investigations/bindings/investigations_binding.dart';
import '../modules/investigations/views/investigations_view.dart';
import '../modules/labtest/bindings/labtest_binding.dart';
import '../modules/labtest/views/labtest_view.dart';
import '../modules/login1/bindings/login1_binding.dart';
import '../modules/login1/views/login1_view.dart';
import '../modules/medicine/bindings/medicine_binding.dart';
import '../modules/medicine/views/medicine_view.dart';
import '../modules/patient_details/bindings/patient_details_binding.dart';
import '../modules/patient_details/views/patient_details_view.dart';
import '../modules/radiology/bindings/radiology_binding.dart';
import '../modules/radiology/views/radiology_view.dart';
import '../modules/treatmentDashboard/bindings/treatment_dashboard_binding.dart';
import '../modules/treatmentDashboard/views/treatment_dashboard_view.dart';
import '../modules/vitals/bindings/vitals_binding.dart';
import '../modules/vitals/views/vitals_view.dart';

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
    GetPage(
      name: _Paths.DEATH_REPORT,
      page: () => DeathReportView(),
      binding: DeathReportBinding(),
      children: [
        GetPage(
          name: _Paths.DEATH_REPORT,
          page: () => DeathReportView(),
          binding: DeathReportBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PATIENT_DETAILS,
      page: () => PatientDetailsView(),
      binding: PatientDetailsBinding(),
    ),
    GetPage(
      name: _Paths.INVESTIGATIONS,
      page: () => InvestigationsView(),
      binding: InvestigationsBinding(),
    ),
    GetPage(
      name: _Paths.INTERDEPARMENTALOPINIION,
      page: () => InterDepartmentalOpinionView(),
      binding: InterDepartmentalOpinionBinding(),
    ),
    GetPage(
      name: _Paths.PHYSICALEXAMINATION,
      page: () => PhysicalExaminationView(),
      binding: PhysicalExaminationBinding(),
    ),
    GetPage(
      name: _Paths.GENERALEXAMINATION,
      page: () => GeneralExaminationView(),
      binding: GeneralExaminationBinding(),
    ),
    GetPage(
      name: _Paths.OTHEREXAMINATION,
      page: () => OtherExaminationView(),
      binding: OtherExaminationBinding(),
    ),
    GetPage(
      name: _Paths.FILTERS,
      page: () => FiltersView(),
      binding: FiltersBinding(),
    ),
  ];
}
