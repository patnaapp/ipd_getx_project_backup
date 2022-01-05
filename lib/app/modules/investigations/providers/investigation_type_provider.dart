import 'package:get/get.dart';

import '../investigation_type_model.dart';

class InvestigationTypeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return InvestigationType.fromJson(map);
      if (map is List)
        return map.map((item) => InvestigationType.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<InvestigationType?> getInvestigationType(int id) async {
    final response = await get('investigationtype/$id');
    return response.body;
  }

  Future<Response<InvestigationType>> postInvestigationType(
          InvestigationType investigationtype) async =>
      await post('investigationtype', investigationtype);
  Future<Response> deleteInvestigationType(int id) async =>
      await delete('investigationtype/$id');
}
