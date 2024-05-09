import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getit=GetIt.instance;
init()async{
getit.registerSingleton( await SharedPreferences.getInstance());

}