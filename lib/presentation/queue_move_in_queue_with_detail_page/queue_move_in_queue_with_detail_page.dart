import 'controller/queue_move_in_queue_with_detail_controller.dart';
import 'models/queue_move_in_queue_with_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class QueueMoveInQueueWithDetailPage extends StatelessWidget {
  QueueMoveInQueueWithDetailPage({Key? key})
      : super(
          key: key,
        );

  QueueMoveInQueueWithDetailController controller = Get.put(
      QueueMoveInQueueWithDetailController(
          QueueMoveInQueueWithDetailModel().obs));

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
                    top: 49.v,
                    right: 16.h,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "msg_expected_wait_time".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "lbl_20_mins".tr,
                        style: CustomTextStyles.bodyMediumBluegray900_1,
                      ),
                      SizedBox(height: 48.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.v),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_current_token".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray900_1,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "lbl_0".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 41.h),
                            child: SizedBox(
                              height: 51.v,
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 40.h,
                              top: 8.v,
                              bottom: 8.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "lbl_your_token".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray900_1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 2.v,
                                    right: 27.h,
                                  ),
                                  child: Text(
                                    "lbl_2".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        text: "lbl_leave_queue".tr,
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
