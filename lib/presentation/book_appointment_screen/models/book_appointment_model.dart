import '../../../core/app_export.dart';import 'package:sahil_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import 'chipview0_am2_item_model.dart';/// This class defines the variables used in the [book_appointment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookAppointmentModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Chipview0Am2ItemModel>> chipview0Am2ItemList = Rx(List.generate(4,(index) =>Chipview0Am2ItemModel()));

 }
