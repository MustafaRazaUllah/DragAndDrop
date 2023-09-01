// ignore_for_file: file_names

import 'package:drag_and_drop/Drag%20and%20Drop/View%20Model/drag_drop_vm.dart';
import 'package:drag_and_drop/Drag%20and%20Drop/View/Component/cardItem.dart';
import 'package:drag_and_drop/Utils/Constant/app_text.dart';
import 'package:drag_and_drop/Utils/Constant/colors.dart';
import 'package:drag_and_drop/Utils/Constant/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DragTargetWidget extends StatelessWidget {
  DragTargetWidget({super.key});

  final controller = Get.find<DragAndDropViewModel>();

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      onWillAccept: (data) {
        return true;
      },
      onAccept: (CardItem data) {
        if (controller.itemsList.isNotEmpty) {
          controller.removeLastItem();
          controller.changeSuccessDrop(true);
          controller.changeAcceptedData(data);
        }
      },
      builder: (context, cd, rd) => Obx(
        () {
          if (controller.successDrop.value) {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Obx(
                () => Stack(
                  children: buildTargetList(controller.getAcceptedData),
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                  height: 200.0,
                  width: 200.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.grey,
                    child: const Center(
                      child: AppText(
                        AppStrings.DROP_ITEMS_HERE,
                        color: AppColor.WHITE_COLOR,
                        size: 20,
                      ),
                    ),
                  )),
            );
          }
        },
      ),
    );
  }

  List<Widget> buildTargetList(CardItem cardItem) {
    List<Widget> targetList = [];
    targetList.add(
      SizedBox(
        height: 200.0,
        width: 200.0,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: cardItem.cardColor,
          child: Center(
            child: AppText(
              cardItem.content,
              color: AppColor.WHITE_COLOR,
              size: 20,
            ),
          ),
        ),
      ),
    );
    return targetList;
  }
}
