import 'controller/chats_controller.dart';
import 'models/chats_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class ChatsPage extends StatelessWidget {
  ChatsPage({Key? key})
      : super(
          key: key,
        );

  ChatsController controller = Get.put(ChatsController(ChatsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              
            ],
          ),
        ),
      );
    
  }
}
