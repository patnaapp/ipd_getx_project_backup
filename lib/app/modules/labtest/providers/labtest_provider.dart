import 'package:get/get.dart';

import '../labtest_model.dart';

class LabtestProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Labtest.fromJson(map);
      if (map is List)
        return map.map((item) => Labtest.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Labtest?> getLabtest(int id) async {
    final response = await get('labtest/$id');
    return response.body;
  }

  Future<Response<Labtest>> postLabtest(Labtest labtest) async =>
      await post('labtest', labtest);
  Future<Response> deleteLabtest(int id) async => await delete('labtest/$id');
}
