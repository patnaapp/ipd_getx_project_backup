import 'package:get/get.dart';

import '../investigations_model.dart';

class InvestigationsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Investigations.fromJson(map);
      if (map is List)
        return map.map((item) => Investigations.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Investigations?> getInvestigations(int id) async {
    final response = await get('investigations/$id');
    return response.body;
  }

  Future<Response<Investigations>> postInvestigations(
          Investigations investigations) async =>
      await post('investigations', investigations);
  Future<Response> deleteInvestigations(int id) async =>
      await delete('investigations/$id');
}
