import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:progectmanaging/core/config/get_it_class.dart';
import 'package:progectmanaging/core/domain/models/login_model.dart';
import 'package:progectmanaging/core/domain/models/signup_model.dart';
import 'package:progectmanaging/core/domain/service/singnup.dart';
import 'package:progectmanaging/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'manager_event.dart';
part 'manager_state.dart';

class appManagerBloc extends Bloc<appManagerEvent, appManagerState> {
  appManagerBloc() : super((appManagerInitial())) {
    on<SigendUp_event>((event, emit) async {
     
      emit(HeSigendUp_state());
     
      
    });

    on<LoggedIn_event>((event, emit) => emit(HeLoggedIn()));

     on<CheckTokenEvent>((event, emit) {
      String? token = getit.get<SharedPreferences>().getString('token');
      if (token is String) {
        emit(CheckTokenState(token: token));
      } else {
        emit(appManagerInitial());
      }
       emit(CheckTokenState(token: token!));
     });
  }
}
