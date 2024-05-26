import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:progectmanaging/core/domain/models/addprogect_model.dart';
import 'package:progectmanaging/core/domain/models/project.dart';
import 'package:progectmanaging/core/domain/service/progects.dart';

part 'progectbloc_event.dart';
part 'progectbloc_state.dart';

class ProgectblocBloc extends Bloc<ProgectblocEvent, ProgectblocState> {
  ProgectblocBloc() : super(ProgectblocInitial()) {
    on<AddProjectevent>((event, emit) async {
       var response=await addnew_progect(event.pro);
       print("AddProjectevent ");
       if(response.id != -1){

      emit(AddProjectstate(id: response.id));
       }
      

      else{
        print("else in AddProjectevent");
        return;
        }
    });
  }
}
