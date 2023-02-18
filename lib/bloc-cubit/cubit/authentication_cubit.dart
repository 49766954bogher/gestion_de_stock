import 'package:bloc/bloc.dart';
import 'package:gestion_de_stock/Repository/user_repository.dart';
import 'package:gestion_de_stock/models/user_auth/user_register_request.dart';
import '../../models/user_auth/user_login_request.dart';
import './authentication_state.dart';
import 'dart:convert';
import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:gestion_de_stock/models/user_auth/user_login_response.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit(this.authRepository) : super(AuthenticationInitial());
  final UserRepository authRepository;

  Future<dynamic> authUser(LoginRequestModel model) async {
    final response = await UserRepository.login(model);
    emit(AuthenticationSuccessState(response));
  }

  Future<dynamic> registerUser(RegisterRequestModel model) async {
    final response = await UserRepository.register(model);
    emit(AuthenticationSuccessState(response));
  }

  static Future<bool> isLogged() async {
    var isKeyExist = await APICacheManager().isAPICacheKeyExist("user_details");
    return isKeyExist;
  }

  static Future<LoginResponseModel?> loginDetails() async {
    var isKeyExist = await APICacheManager().isAPICacheKeyExist("user_details");
    if (isKeyExist) {
      var caheData = await APICacheManager().getCacheData("user_details");
      return loginResponseJson(caheData.syncData);
    }
    return null;
  }

  static Future<void> setLoginDetails(LoginResponseModel model) async {
    APICacheDBModel apiCacheDBModel = APICacheDBModel(
        key: "user_details", syncData: jsonEncode(model.toJson()));

    await APICacheManager().addCacheData(apiCacheDBModel);
  }

  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("user_details");
    // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(context, 'connecter', (route) => false);
  }
}
