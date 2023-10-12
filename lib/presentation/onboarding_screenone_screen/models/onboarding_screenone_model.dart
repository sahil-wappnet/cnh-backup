import '../../../core/app_export.dart';import 'checkyourhealth_item_model.dart';import 'slider_item_model.dart';/// This class defines the variables used in the [onboarding_screenone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingScreenoneModel {Rx<List<CheckyourhealthItemModel>> checkyourhealthItemList = Rx(List.generate(1,(index) => CheckyourhealthItemModel()));

Rx<List<SliderItemModel>> sliderItemList = Rx(List.generate(1,(index) => SliderItemModel()));

 }
