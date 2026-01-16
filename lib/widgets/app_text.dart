import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? height;

  const AppText(
    this.text, {
    super.key,
    this.size,
    this.weight,
    this.color,
    this.align,
    this.maxLines,
    this.overflow,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.w600,
        color: color ?? Get.theme.colorScheme.onPrimary,
        height: height,
      ),
    );
  }
}
