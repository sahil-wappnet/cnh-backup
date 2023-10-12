import '../../../core/app_export.dart';import 'slider2_item_model.dart';import 'sliderbookcareg_item_model.dart';/// This class defines the variables used in the [onboarding_screenthree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingScreenthreeModel {Rx<List<Slider2ItemModel>> slider2ItemList = Rx(List.generate(1,(index) => Slider2ItemModel()));

Rx<List<SliderbookcaregItemModel>> sliderbookcaregItemList = Rx(List.generate(1,(index) => SliderbookcaregItemModel()));

 }
