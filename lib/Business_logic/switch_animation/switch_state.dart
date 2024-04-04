part of "switch_bloc.dart";

class SwicthState extends Equatable {
  bool isSwitched;
  double sliderValue;
  SwicthState({this.isSwitched = false, this.sliderValue = 0});
  
  @override
  List<Object?> get props => [isSwitched,sliderValue];


  SwicthState copyWith({bool? isSwitched, double? sliderValue}) {
    return SwicthState(
      isSwitched: isSwitched ?? this.isSwitched,
      sliderValue: sliderValue ?? this.sliderValue
    );
  }
}
