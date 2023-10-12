import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:sahil_s_application2/presentation/my_cart_screen/models/productdetails_item_model.dart';

/// This class defines the variables used in the [my_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel {Rx<List<ProductdetailsItemModel>> productdetailsItemList = Rx(List.generate(3,(index) => ProductdetailsItemModel()));

 }