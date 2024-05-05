import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:progectmanaging/core/config/get_it_class.dart';
import 'package:progectmanaging/core/domain/models/login_model.dart';
import 'package:progectmanaging/core/domain/service/login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<SendLogin>((event, emit) async{
     var response=await Login_Service(event.user);
     if(response is String){
       getit.get<SharedPreferences>().setString('token', response);
      emit(LoginSuccees());
     }
     else{emit(LoginErorr()); 
     
     }
    });
  }
}
