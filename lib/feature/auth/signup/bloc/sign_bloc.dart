import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:progectmanaging/core/config/get_it_class.dart';
import 'package:progectmanaging/core/domain/models/signup_model.dart';
import 'package:progectmanaging/core/domain/service/singnup.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_event.dart';
part 'sign_state.dart';

class SignBloc extends Bloc<SignEvent, SignState> {
  SignBloc() : super(SignInitial()) {
    on<Signup_Sending>((event, emit) async {
     var response=await Sign_Service(event.user);
    if(response is String){
   
       getit.get<SharedPreferences>().setString('token', response);
      emit(SignupSuccees());}
     else{
      emit(SignupErorr());
     }

    });
  }
}
