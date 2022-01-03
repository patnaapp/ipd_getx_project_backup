import 'package:get/get.dart';

import '../Radiology_model.dart';

class RadiologyProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Radiology.fromJson(map);
      if (map is List)
        return map.map((item) => Radiology.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Radiology?> getRadiology(int id) async {
    final response = await get('Radiology/$id');
    return response.body;
  }

  Future<Response<Radiology>> postRadiology(Radiology Radiology) async =>
      await post('Radiology', Radiology);
  Future<Response> deleteRadiology(int id) async => await delete('Radiology/$id');
}
