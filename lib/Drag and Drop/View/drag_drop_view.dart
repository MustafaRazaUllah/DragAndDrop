import 'package:drag_and_drop/Drag%20and%20Drop/View%20Model/drag_drop_vm.dart';
import 'package:drag_and_drop/Utils/Constant/app_text.dart';
import 'package:drag_and_drop/Utils/Constant/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Component/cardStackWidget.dart';
import 'dragTargetWidget.dart';

class DragAndDropView extends StatelessWidget {
  DragAndDropView({super.key});

  final controller = Get.find<DragAndDropViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(AppStrings.APP_BAR_TITLE),
        centerTitle: true,
        elevation: 5.0,
        shadowColor: Colors.grey[100],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.initializeDraggableList();
          controller.changeSuccessDrop(false);
        },
        elevation: 20.0,
        label: const AppText('Reset'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardStackWidget(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: DragTargetWidget(),
            )
          ],
        ),
      ),
    );
  }
}
