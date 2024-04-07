
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part "image_picker_events.dart";
part "image_picker_state.dart";


class  ImagePickerBloc extends Bloc<ImagePickerEvents, ImagePickerState> {
  ImagePickerBloc(super.initialState);
  
}