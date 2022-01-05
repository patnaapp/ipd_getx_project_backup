import 'package:get/get.dart';

import '../examination_model.dart';

class ExaminationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Examination.fromJson(map);
      if (map is List)
        return map.map((item) => Examination.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Examination?> getExamination(int id) async {
    final response = await get('examination/$id');
    return response.body;
  }

  Future<Response<Examination>> postExamination(
          Examination examination) async =>
      await post('examination', examination);
  Future<Response> deleteExamination(int id) async =>
      await delete('examination/$id');
}
