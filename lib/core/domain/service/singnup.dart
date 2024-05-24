import 'package:dio/dio.dart';
import 'package:progectmanaging/core/domain/models/signup_model.dart';

Sign_Service(SignUpModel user)async{

Dio dio=Dio();
print(user.toMap());
// try{
Response response= await dio.post("https://projects-management-system.onrender.com/api/v1/auth/register",
data: user.toMap());
return response.data["token"];
}
// catch(e){
//   return false;
// }


