import 'dart:convert';

import 'package:get/get.dart';
import '../captcha_model.dart';
import 'package:http/http.dart'as http;

class CaptchaProvider extends GetConnect {
  static var client  = http.Client();
  @override
  void onInit() {
    // httpClient.defaultDecoder = (map) {
    //   if (map is Map<String, dynamic>) return captcha_model.fromJson(map);
    //   if (map is List)
    //     return map.map((item) => captcha_model.fromJson(item)).toList();
    // };
    // httpClient.baseUrl = 'https://nextgen.ehospital.nic.in/api/';
  }

  Future<Captcha_model?> getCaptcha(String captchaId, String id) async {
    final response = await client.get(Uri.parse(
        'https://nextgen.ehospital.nic.in/api/authentication/v1/captcha_image'),
        headers: {"Accept": "application/json", "captchaId": captchaId,"id" : id});


    if (response.statusCode == 200) {
      //print(response.body);
      var jsonString = response.body;
      return Captcha_model.fromJson(json.decode(jsonString));
    }
    else {
      print("error in API");
      return null;
    }
  }


  Future<Captcha_model?> PostAuthenticate(String captchaId, String id, String captchaValue, String password, String userId) async {
    final response = await client.post(Uri.parse(
        'https://nextgen.ehospital.nic.in/api/authentication/v1/login'),
        headers: {"Accept": "application/json","Content-Type" : "application/json"},
        body: {
          "captcha_id": captchaId,
          "captcha_value": captchaValue,
          "id": id,
          "password": password,
          "user_id": userId
        });



    if (response.statusCode == 200) {
      //print(response.body);
      var jsonString = response.body;
      return Captcha_model.fromJson(json.decode(jsonString));
    }
    else {
      print("error in API");
      return null;
    }
  }

  Future<UserDetail?> PostAuthenticateWithBody(Map body) async {
    final response = await client.post(Uri.parse(
        'https://nextgen.ehospital.nic.in/api/authentication/v1/login'),
        headers: {"Accept": "application/json","Content-Type" : "application/json"},
        body: body);
    if (response.statusCode == 200) {
      var resp = DefaultResponse.fromJson(json.decode(response.body));
      if (resp.code == "200!!"){
        UserDetail info = resp.response as UserDetail;
        return info;//Ho gya
      }else{

        print(resp.message);//show this on toast
      }
      //return Captcha_model.fromJson();
    }
    else {
      print("error in API");
      return null;
    }
  }


  //   Future<Captcha_model?> getCaptchaonRefresh() async {
  //     final response = await client.get(Uri.parse('https://nextgen.ehospital.nic.in/api/authentication/v1/captcha_image'),headers: {"Accept": "application/json", "captchaId": "","id" : ""});
  //     if(response.statusCode == 200){
  //       print(response.body);
  //       var jsonString = response.body;
  //       return Captcha_model.fromJson(json.decode(jsonString));
  //     }
  //     else{
  //       print("error in API1");
  //       return null;
  //     }
  //  // return
  //  // return response.body;
  // }


}
