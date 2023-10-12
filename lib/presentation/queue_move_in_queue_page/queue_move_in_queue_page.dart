import 'controller/queue_move_in_queue_controller.dart';
import 'models/queue_move_in_queue_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class QueueMoveInQueuePage extends StatelessWidget {
  QueueMoveInQueuePage({Key? key})
      : super(
          key: key,
        );

  QueueMoveInQueueController controller =
      Get.put(QueueMoveInQueueController(QueueMoveInQueueModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 193.v,
                    right: 16.h,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgUser,
                        height: 96.adaptSize,
                        width: 96.adaptSize,
                      ),
                      SizedBox(height: 22.v),
                      Text(
                        "msg_you_are_not_stuck".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 176.v),
                      CustomElevatedButton(
                        text: "lbl_join_queue".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
