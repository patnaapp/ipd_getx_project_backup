import 'package:get/get.dart';

import '../vitals_model.dart';

class VitalsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Vitals.fromJson(map);
      if (map is List) return map.map((item) => Vitals.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Vitals?> getVitals(int id) async {
    final response = await get('vitals/$id');
    return response.body;
  }

  Future<Response<Vitals>> postVitals(Vitals vitals) async =>
      await post('vitals', vitals);
  Future<Response> deleteVitals(int id) async => await delete('vitals/$id');
}
