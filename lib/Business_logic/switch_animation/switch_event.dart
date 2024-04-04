// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "switch_bloc.dart";

sealed class SwitchEvent extends Equatable{
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class EnableOrDisableSwicth extends SwitchEvent{}
class SliderEvets extends SwitchEvent {
  double sliderVal;
  SliderEvets({required this.sliderVal});

  @override
  List<Object> get props => [sliderVal];
  
  

  // SliderEvets copyWith({
  //   double? sliderVal,
  // }) {
  //   return SliderEvets(
  //     sliderVal: sliderVal ?? this.sliderVal,
  //   );
  // }
}
