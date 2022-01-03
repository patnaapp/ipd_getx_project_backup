import 'package:get/get.dart';

import '../modules/Login1/bindings/login1_binding.dart';
import '../modules/Login1/views/login1_view.dart';
import '../modules/advice/bindings/advice_binding.dart';
import '../modules/advice/views/advice_view.dart';
import '../modules/death_report/bindings/death_report_binding.dart';
import '../modules/death_report/views/death_report_view.dart';
import '../modules/discharge/bindings/discharge_binding.dart';
import '../modules/discharge/views/discharge_view.dart';
import '../modules/discharge_type/bindings/discharge_type_binding.dart';
import '../modules/discharge_type/views/discharge_type_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/investigations/bindings/investigations_binding.dart';
import '../modules/investigations/views/investigations_view.dart';
import '../modules/patient_details/bindings/patient_details_binding.dart';
import '../modules/patient_details/views/patient_details_view.dart';
import '../modules/vitals/bindings/vitals_binding.dart';
import '../modules/vitals/views/vitals_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN1,
      page: () => Login1View(),
      binding: Login1Binding(),
    ),
    GetPage(
      name: _Paths.ADVICE,
      page: () => AdviceView(),
      binding: AdviceBinding(),
    ),
    GetPage(
      name: _Paths.DISCHARGE,
      page: () => DischargeView(),
      binding: DischargeBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_DETAILS,
      page: () => PatientDetailsView(),
      binding: PatientDetailsBinding(),
    ),
    GetPage(
      name: _Paths.VITALS,
      page: () => VitalsView(),
      binding: VitalsBinding(),
    ),
    GetPage(
      name: _Paths.INVESTIGATIONS,
      page: () => InvestigationsView(),
      binding: InvestigationsBinding(),
    ),
    GetPage(
      name: _Paths.DISCHARGE_TYPE,
      page: () => DischargeTypeView(),
      binding: DischargeTypeBinding(),
    ),
    GetPage(
      name: _Paths.DEATH_REPORT,
      page: () => DeathReportView(),
      binding: DeathReportBinding(),
    ),
  ];
}
