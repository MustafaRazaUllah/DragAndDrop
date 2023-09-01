import 'package:drag_and_drop/Utils/Constant/colors.dart';
import 'package:drag_and_drop/Utils/Constant/string.dart';

import 'cardItem.dart';

class Constants {
  static List<CardItem> initializeList(List<CardItem> itemList) {
    itemList = [
      CardItem(content: AppStrings.JAVA, cardColor: AppColor.BROWN_COLOR),
      CardItem(content: AppStrings.PHP, cardColor: AppColor.RED_COLOR),
      CardItem(content: AppStrings.KOTLIN, cardColor: AppColor.ORANGE_COLOR),
      CardItem(content: AppStrings.FLUTTER, cardColor: AppColor.BLUE_COLOR),
      CardItem(content: AppStrings.NODEJS, cardColor: AppColor.GREEN_COLOR),
    ];
    return itemList;
  }
}
