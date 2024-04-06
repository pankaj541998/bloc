
part of 'image_picker_bloc.dart';

abstract class ImagePickerEvents extends Equatable{
const  ImagePickerEvents();

@override
List <Object> get props => []; 
}



class ImagePickerWithCamera extends ImagePickerEvents {}
class ImagePickerWithGallery extends ImagePickerEvents {}