import 'package:drag_and_drop/Drag%20and%20Drop/View/Component/constants.dart';
import 'package:drag_and_drop/Utils/Constant/colors.dart';
import 'package:get/get.dart';
import '../View/Component/cardItem.dart';

class DragAndDropViewModel extends GetxController {
  Rx<bool> successDrop = false.obs;
  RxList<CardItem> items = <CardItem>[].obs;
  Rx<CardItem> acceptedData =
      CardItem(cardColor: AppColor.GRAY_COLOR, content: '').obs;

  bool get isSuccessDrop => successDrop.value;
  List<CardItem> get itemsList => items;
  CardItem get getAcceptedData => acceptedData.value;

  DragAndDropViewModel() {
    successDrop.value = false;
    items.value = Constants.initializeList(items);
    successDrop.refresh();
    items.refresh();
  }

  // set setSuccessDrop(bool status) {
  //   successDrop.value = status;
  // }

  changeAcceptedData(CardItem data) {
    acceptedData.value = data;
  }

  changeSuccessDrop(bool status) {
    successDrop.value = status;
  }

  removeLastItem() {
    items.removeLast();
    items.refresh();
  }

  addItemToList(CardItem item) {
    items.add(item);
    items.refresh();
  }

  initializeDraggableList() {
    items.value = Constants.initializeList(items);
    items.refresh();
  }
}
