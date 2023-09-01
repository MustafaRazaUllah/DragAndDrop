// ignore_for_file: file_names

import 'package:drag_and_drop/Drag%20and%20Drop/View%20Model/drag_drop_vm.dart';
import 'package:drag_and_drop/Drag%20and%20Drop/View/draggableWidget.dart';
import 'package:drag_and_drop/Utils/Constant/app_text.dart';
import 'package:drag_and_drop/Utils/Constant/colors.dart';
import 'package:drag_and_drop/Utils/Constant/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardStackWidget extends StatelessWidget {
  CardStackWidget({super.key});

  final controller = Get.find<DragAndDropViewModel>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        alignment: Alignment.center,
        children: cardItems(context),
      ),
    );
  }

  List<Widget> cardItems(BuildContext context) {
    dynamic cardItemdraggable;
    List<Widget> carditemsList = [];
    if (controller.itemsList.isEmpty) {
      cardItemdraggable = const SizedBox(
        height: 200.0,
        width: 200.0,
        child: Card(
          color: AppColor.GRAY_COLOR,
          child: Center(
            child: AppText(
              AppStrings.NO_ITEMS_LEFT,
            ),
          ),
        ),
      );
    } else {
      for (int i = 0; i < controller.itemsList.length; i++) {
        cardItemdraggable = DraggableWidget(i: i);
      }
    }
    carditemsList.add(cardItemdraggable);

    return carditemsList;
  }
}
