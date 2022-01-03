import 'package:get/get.dart';

import '../medicine_model.dart';

class MedicineProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Medicine.fromJson(map);
      if (map is List)
        return map.map((item) => Medicine.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Medicine?> getMedicine(int id) async {
    final response = await get('medicine/$id');
    return response.body;
  }

  Future<Response<Medicine>> postMedicine(Medicine medicine) async =>
      await post('medicine', medicine);
  Future<Response> deleteMedicine(int id) async => await delete('medicine/$id');
}
