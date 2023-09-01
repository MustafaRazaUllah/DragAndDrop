import 'package:drag_and_drop/Drag%20and%20Drop/View%20Model/drag_drop_vm.dart';
import 'package:drag_and_drop/Drag%20and%20Drop/View/drag_drop_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.dragAndDrop,
      transition: Transition.cupertinoDialog,
      page: () => DragAndDropView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<DragAndDropViewModel>(
          () => DragAndDropViewModel(),
        );
      }),
    ),
  ];
}
