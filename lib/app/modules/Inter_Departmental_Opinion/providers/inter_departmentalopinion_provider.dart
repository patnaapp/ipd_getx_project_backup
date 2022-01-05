import 'package:get/get.dart';

import '../inter_departmentalopinion_model.dart';

class InterDepartmentalopinionProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>)
        return InterDepartmentalopinion.fromJson(map);
      if (map is List)
        return map
            .map((item) => InterDepartmentalopinion.fromJson(item))
            .toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<InterDepartmentalopinion?> getInterDepartmentalopinion(int id) async {
    final response = await get('interdepartmentalopinion/$id');
    return response.body;
  }

  Future<Response<InterDepartmentalopinion>> postInterDepartmentalopinion(
          InterDepartmentalopinion interdepartmentalopinion) async =>
      await post('interdepartmentalopinion', interdepartmentalopinion);
  Future<Response> deleteInterDepartmentalopinion(int id) async =>
      await delete('interdepartmentalopinion/$id');
}
