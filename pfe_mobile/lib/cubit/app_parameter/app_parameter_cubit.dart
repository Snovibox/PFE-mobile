import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_parameter_state.dart';

class AppParameterCubit extends Cubit<AppParameterState> {
  AppParameterCubit() : super(AppParameterState._());

  void getParameter(){
    try{
      emit(
        AppParameterState._()
      );
    } on Exception {
      
    }
  }
}
