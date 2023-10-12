import '../../../core/app_export.dart';/// This class is used in the [productdetails_item_widget] screen.
class ProductdetailsItemModel {ProductdetailsItemModel({this.productName, this.price, this.id, }) { productName = productName  ?? Rx("Octoxid");price = price  ?? Rx("Rs 300");id = id  ?? Rx(""); }

Rx<String>? productName;

Rx<String>? price;

Rx<String>? id;

 }
