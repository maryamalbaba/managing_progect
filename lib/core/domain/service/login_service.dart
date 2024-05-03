import 'package:dio/dio.dart';
import 'package:progectmanaging/core/domain/models/login_model.dart';

 Future<bool>Login_Service(LoginModel user)async{

Dio dio=Dio();
Response response= await dio.post("https://projects-management-system.onrender.com/v1/auth/register");

if(response.statusCode==200){
  return true;
}else{
  return false;
}

}