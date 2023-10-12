import '../../../core/app_export.dart';import 'slider1_item_model.dart';import 'slideronlinerep_item_model.dart';/// This class defines the variables used in the [onboarding_screentwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingScreentwoModel {Rx<List<Slider1ItemModel>> slider1ItemList = Rx(List.generate(1,(index) => Slider1ItemModel()));

Rx<List<SlideronlinerepItemModel>> slideronlinerepItemList = Rx(List.generate(1,(index) => SlideronlinerepItemModel()));

 }
