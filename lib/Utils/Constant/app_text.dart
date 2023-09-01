import 'package:drag_and_drop/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String title;
  final TextAlign alignment;
  final TextOverflow txtOverFlow;
  final FontStyle style;
  final double letterSpacce;
  final Color color;
  final TextDecoration textDecoration;
  final FontWeight fontWeight;
  final double size;

  final int? maxLines;
  const AppText(
    this.title, {
    super.key,
    this.size = 16,
    this.fontWeight = FontWeight.w600,
    this.textDecoration = TextDecoration.none,
    this.color = AppColor.Dark_Text,
    this.letterSpacce = 0,
    this.style = FontStyle.normal,
    this.alignment = TextAlign.start,
    this.txtOverFlow = TextOverflow.visible,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignment,
      maxLines: maxLines,
      style: TextStyle(
        overflow: txtOverFlow,
        fontStyle: style,
        letterSpacing: letterSpacce,
        color: color,
        decoration: textDecoration,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
