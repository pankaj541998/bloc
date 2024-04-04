import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';


class SwicthBloc extends Bloc<SwitchEvent, SwicthState>{
  SwicthBloc(): super(SwicthState()){
    on<EnableOrDisableSwicth>(_enableOrDisableSwicth);
    on<SliderEvets>(_sliderAnimations);
  }

  void _enableOrDisableSwicth(EnableOrDisableSwicth event, Emitter emit){
    emit(state.copyWith(isSwitched:!state.isSwitched));
  }

  void _sliderAnimations(SliderEvets event, Emitter emit){
    emit(state.copyWith(sliderValue:event.sliderVal));
  }


}