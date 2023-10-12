import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../payment_page/widgets/chipviewgroupsi_item_widget.dart';
import '../payment_page/widgets/slidercurrentba_item_widget.dart';
import 'controller/payment_controller.dart';
import 'models/chipviewgroupsi_item_model.dart';
import 'models/payment_model.dart';
import 'models/slidercurrentba_item_model.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final PaymentController controller = Get.put(PaymentController(PaymentModel().obs));

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 25.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgArrowleft,
            onTap: () {
              Get.back();
            },
          ),
          title: AppbarSubtitle(
            text: "msg_book_appointment".tr,
            margin: EdgeInsets.only(left: 10.v),
          ),
          actions: [
            AppbarImage1(svgPath: ImageConstant.imgMdibellnotificationoutline),
          ],
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildCardsSection(),
                
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.v),
                  child: CustomElevatedButton(text: "lbl_proceed".tr, onTap: () {
                    Get.toNamed(AppRoutes.homePageTabContainerScreen);
                  },),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardsSection() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h, top: 10.v, right: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCarouselSlider(),
          
          SizedBox(height: 10.v),
          Obx(
            () => CustomCheckboxButton(
              text: "msg_save_card_for_later".tr,
              value: controller.englishName.value,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              onChange: (value) {
                controller.englishName.value = value;
              },
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  Widget _buildCarouselSlider() {
    return SizedBox(
      height: 533.v,
      width: 328.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 9.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_your_cards".tr, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 217.v),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 2.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 7,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray100,
                          dotHeight: 2.v,
                          dotWidth: 15.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Text("lbl_add_cards".tr, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 21.v),
                  Obx(
                    () => Wrap(
                      runSpacing: 25.v,
                      spacing: 25.h,
                      children: List<Widget>.generate(
                        controller.paymentModelObj.value
                            .chipviewgroupsiItemList.value.length,
                        (index) {
                          ChipviewgroupsiItemModel model = controller
                              .paymentModelObj.value.chipviewgroupsiItemList.value[index];
                          return ChipviewgroupsiItemWidget(model);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text("lbl_expiry_date".tr, style: theme.textTheme.bodySmall),
                  SizedBox(height: 8.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          controller: controller.expirydateController,
                          margin: EdgeInsets.only(right: 14.h),
                          hintText: "lbl_month".tr,
                        ),
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          controller: controller.yearController,
                          margin: EdgeInsets.only(left: 14.h),
                          hintText: "lbl_year".tr,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 17.v, right: 13.h),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_cvv".tr, style: theme.textTheme.bodySmall),
                            SizedBox(height: 9.v),
                            CustomTextFormField(
                              width: 145.h,
                              controller: controller.cvvController,
                              hintText: "lbl2".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null || (!isValidPassword(value, isRequired: true))) {
                                  return "Please enter a valid password";
                                }
                                return null;
                              },
                              obscureText: true,
                            ),
                          ],
                        ),
                        Container(
                          width: 131.h,
                          margin: EdgeInsets.only(left: 30.h, top: 18.v, bottom: 14.v),
                          child: Text("msg_the_last_3_digits".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.v),
            child: Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 184.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason,) {
                    controller.sliderIndex.value = index;
                  },
                ),
                itemCount: controller.paymentModelObj.value.slidercurrentbaItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  SlidercurrentbaItemModel model = controller.paymentModelObj.value.slidercurrentbaItemList.value[index];
                  return SlidercurrentbaItemWidget(model);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}
