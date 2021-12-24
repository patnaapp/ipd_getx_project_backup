import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/ApiConstants.dart';

class IpdProvider extends GetConnect {
  @override
  void onInit() {

  }

  IpdProvider() {
    httpClient.baseUrl = ApiConstants.api_url;
  }
}
