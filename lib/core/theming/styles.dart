import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_doctor_3/core/helpers/font_weight_helper/font_weight_helper.dart';
import 'colors.dart';

class TextStyles {
  // نصوص سوداء بحجم 24
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  // نصوص زرقاء بحجم 32
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.mainBlue,
  );

  // نصوص رمادية بحجم 14
  static TextStyle font14GrayNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.gray,
  );

  // نصوص بيضاء بحجم 16
  static TextStyle font16WhiteNormal = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.normal,
    color: Colors.white,
  );

  static TextStyle font16WhitesemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  // نصوص زرقاء بحجم 24
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.mainBlue,
  );

  static TextStyle font14lightGrayNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.lightGray,
  );

  static TextStyle font14darkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsApp.darkBlue,
  );

  static TextStyle font13BlueNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.mainBlue,
  );

  static TextStyle font13GrayNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.lightGray,
  );

  static TextStyle font13blackNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: Colors.black,
  );
}
