import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

import 'controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_2.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';

class MessageScreen extends GetWidget<MessageController> {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        appBar: CustomAppBar(
          // elevation: 0.3,
          height: 100.v,
            centerTitle: true,
            title: Column(children: [
              Row(children: [
                AppbarImage2(
                    svgPath: ImageConstant.imgArrowleft,
                    onTap: () {
                     Get.back();
                    }),
                AppbarCircleimage(
                  height: 40.v,
                  width: 40.h,
                    imagePath: ImageConstant.placeholderImage,
                    margin: EdgeInsets.only(left: 15.h)),
                AppbarSubtitle(
                    text: "lbl_dr_khan2".tr,
                    margin: EdgeInsets.only(
                        left: 5.h, top: 2.v, bottom: 2.v)),
              ]),
              SizedBox(height: 14.v),
              Divider()
            ]),
            
            ),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.v),
                  Expanded(
                    child: Column(    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text("lbl_today".tr,
                              style: theme.textTheme.bodySmall),
                        ),
                      
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                  Container(padding: EdgeInsets.symmetric(vertical: 12.v,horizontal: 5.h),
                                    decoration: BoxDecoration(color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                                    child: Text("lbl_hello_doctor".tr,style: TextStyle(color: Colors.white,fontSize: 14),),),
                                    SizedBox(height: 5.v,),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 3.v, bottom: 1.v),
                                          child: Text("lbl_10_00".tr,
                                              style: theme.textTheme.bodySmall),),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCheckmark,
                                          color: Colors.black,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(left: 5.h),)
                                    ]),
                              ],
                            ))),
                            Column(children: [
                               Container(padding: EdgeInsets.symmetric(vertical: 12.v,horizontal: 5.h),
                                    decoration: BoxDecoration(color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                                    child: Text("lbl_yes_shreya".tr,style: TextStyle(color: Colors.white,fontSize: 14),),),
                                    SizedBox(height: 5.v,),
                                          Padding(
                        padding: EdgeInsets.only(left: 80.h, top: 3.v),
                        child: Text("lbl_10_01".tr,
                            style: theme.textTheme.bodySmall)),
                            ],),
                               
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                 Container(padding: EdgeInsets.symmetric(vertical: 12.v,horizontal: 5.h),
                                    decoration: BoxDecoration(color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                                    child: Text("msg_are_you_available".tr,style: TextStyle(color: Colors.white,fontSize: 14),),),
                                    SizedBox(height: 5.v,),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 3.v, bottom: 1.v),
                                          child: Text("lbl_10_02".tr,
                                              style: theme.textTheme.bodySmall)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCheckmark,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(left: 5.h))
                                    ]),
                              ],
                            ))),
                                 Column(children: [
                               Container(padding: EdgeInsets.symmetric(vertical: 12.v,horizontal: 5.h),
                                    decoration: BoxDecoration(color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                                    child: Text("lbl_yes_shreya".tr,style: TextStyle(color: Colors.white,fontSize: 14),),),
                                    SizedBox(height: 5.v,),
                                          Padding(
                        padding: EdgeInsets.only(left: 80.h, top: 3.v),
                        child: Text("lbl_10_03".tr,
                            style: theme.textTheme.bodySmall)),
                            ],), ],
                    ),
                  ),
                       SizedBox(
                      height: 20.v,
                    ),   
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15.h),
                                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: appTheme.gray300,
                                    ),
                                    child: CustomTextFormField(
                                        textInputAction: TextInputAction.newline,
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 11, vertical: 12),
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        textInputType: TextInputType.multiline,
                                        controller:
                                            controller.messageController,
                                        borderDecoration: InputBorder.none,
                                        hintText: "typeMessage",
                                        suffix:
                                            controller.messageController.text.isEmpty
                                                ? SizedBox(
                                                    height:3.v,
                                                    width: 100.h,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        IconButton(
                                                            icon: Icon(
                                                              Icons.camera_alt_outlined,
                                                              size: 20,
                                                              color: Theme.of(context)
                                                                  .primaryColor,
                                                            ),
                                                            onPressed: () {
                                                              // controller.pickImage(
                                                              //     ImageSource.camera,
                                                              //     context);
                                                            }),
                                                        IconButton(
                                                            icon: Icon(
                                                              Icons.photo,
                                                              size:  20,
                                                              color: Theme.of(context)
                                                                  .primaryColor,
                                                            ),
                                                            onPressed: () {
                                                              // controller.pickImage(
                                                              //     ImageSource.gallery,
                                                              //     context);
                                                            }),
                                                      ],
                                                    ),
                                                  )
                                                : const SizedBox.shrink()),
                                  ),
                              ),
                               (controller.messageController.text.isNotEmpty)
                            ? IconButton(
                                icon: Icon(
                                  Icons.send,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onPressed: () {
                                  if (controller
                                      .messageController.text.isNotEmpty) {
                                    // controller.sendMessage(
                                    //   controller.messageController.text,
                                    // );
                                  }
                                },
                              )
                            : const SizedBox.shrink(),
                            ],
                          ),
                          SizedBox(height: 20.v,)
                             
                ],),),
       );
  }
}
