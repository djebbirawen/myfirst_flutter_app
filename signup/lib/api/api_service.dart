/*import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:signup/model/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginResponseModel requestModel) async {
    String url = "https://reqres.in/api/login";
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJason(json.decode(response.body));
    }
    else{ 
      throw Exception('Failed to load Data ')}
  }
}
*/