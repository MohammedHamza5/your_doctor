import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_doctor_3/core/theming/colors.dart';

class AppButton extends StatelessWidget {
  final String text; // النص
  final TextStyle? textStyle; // تنسيق النص
  final VoidCallback onPressed; // وظيفة الضغط
  final Color? backgroundColor; // لون الخلفية
  final Color? textColor; // لون النص
  final Color? splashColor; // لون تأثير الضغط
  final double? width; // عرض الزر
  final double? height; // ارتفاع الزر
  final double? horizontalPadding; // المسافة الداخلية الأفقية
  final double? verticalPadding; // المسافة الداخلية الرأسية
  final BorderRadiusGeometry? borderRadius; // انحناء الزر
  final IconData? icon; // الأيقونة
  final double? iconSize; // حجم الأيقونة
  final Color? iconColor; // لون الأيقونة

  const AppButton({
    super.key,
    required this.text,
    this.textStyle,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.splashColor,
    this.width,
    this.height,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.icon,
    this.iconSize,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? ColorsApp.mainBlue),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(
            width?.w ?? double.maxFinite,
            height?.h ?? 50.h,
          ),
        ),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
