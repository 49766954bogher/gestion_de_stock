import 'dart:convert';
import 'package:gestion_de_stock/constants/api.dart';
import 'package:gestion_de_stock/models/user_auth/user_login_request.dart';
import 'package:gestion_de_stock/models/user_auth/user_login_response.dart';
import 'package:http/http.dart' as http;

import '../bloc-cubit/cubit/authentication_cubit.dart';
import '../models/user_auth/user_register_request.dart';
import '../models/user_auth/user_register_response.dart';

class UserRepository {
  static var client = http.Client();
  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    var url = Uri.http(ApiConfig.apiUrl, ApiConfig.login);
    var response = await client.post(url,
        headers: headers, body: jsonEncode(model.toJson()));
    // print(response.body);
    if (response.statusCode == 200) {
      await AuthenticationCubit.setLoginDetails(
          loginResponseJson(response.body));
      return true;
    } else {
      //throw exception
      return false;
    }
  }

  static Future<RegisterResponseModel> register(
      RegisterRequestModel request) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    var url = Uri.http(ApiConfig.apiUrl, ApiConfig.regsiter);
    var response = await client.post(url,
        headers: headers, body: jsonEncode(request.toJson()));

    //throw exception
    return RegisterResponseModel(response.body);
  }
}
