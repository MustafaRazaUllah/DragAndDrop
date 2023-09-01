// ignore_for_file: must_be_immutable

import 'package:drag_and_drop/Drag%20and%20Drop/View%20Model/drag_drop_vm.dart';
import 'package:drag_and_drop/Drag%20and%20Drop/View/Component/cardItem.dart';
import 'package:drag_and_drop/Utils/Constant/app_text.dart';
import 'package:drag_and_drop/Utils/Constant/colors.dart';
import 'package:drag_and_drop/Utils/Constant/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DraggableWidget extends StatelessWidget {
  DraggableWidget({super.key, required this.i});

  final controller = Get.find<DragAndDropViewModel>();
  final int i;

  CardItem? item;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: controller.itemsList[i],
      childWhenDragging: SizedBox(
        height: 200.0,
        width: 200.0,
        child: Card(
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: i >= 1
              ? controller.itemsList
                  .elementAt((controller.itemsList.length - 1) - 1)
                  .cardColor
              : AppColor.GRAY_COLOR,
          child: Center(
            child: AppText(
              i >= 1
                  ? controller.itemsList
                      .elementAt((controller.itemsList.length - 1) - 1)
                      .content
                  : AppStrings.NO_ITEMS_LEFT,
              color: AppColor.WHITE_COLOR,
              size: 20,
            ),
          ),
        ),
      ),
      feedback: SizedBox(
        height: 200.0,
        width: 200.0,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 2.0,
          color: controller.itemsList[i].cardColor,
          child: Center(
            child: AppText(
              controller.itemsList[i].content,
              color: AppColor.WHITE_COLOR,
              size: 20,
            ),
          ),
        ),
      ),
      child: SizedBox(
        height: 200.0,
        width: 200.0,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 2.0,
          color: controller.itemsList[i].cardColor,
          child: Center(
            child: AppText(
              controller.itemsList[i].content,
              color: AppColor.WHITE_COLOR,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
