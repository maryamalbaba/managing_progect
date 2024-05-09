import 'package:dio/dio.dart';
import 'package:progectmanaging/core/domain/models/login_model.dart';

Login_Service(LoginModel user) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post(
        "https://projects-management-system.onrender.com/api/v1/auth/authenticate",
        data: user.toMap());
    return response.data["token"];
  } catch (e) {
    return false;
  }
}
