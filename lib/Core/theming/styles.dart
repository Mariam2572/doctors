import 'package:doctors/Core/theming/app_color.dart';
import 'package:doctors/Core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font24BoldBlack = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeightHelper.bold, color: Colors.black);
  static TextStyle font24blueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColor.primaryColor);
  static TextStyle font32BoldBlue = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor);
  static TextStyle font14RegularGrey = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.gray);
  static TextStyle font13RegularBlue = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.primaryColor);
  static TextStyle font13GrayRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.gray);
  static TextStyle font13DarkBlueMedium = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColor.darkBlue);
  static TextStyle font13BlueSemiBold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.primaryColor);
  static TextStyle font13DarkBlueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.darkBlue);
  static TextStyle font14RegularLightGrey = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.lightGray);
  static TextStyle font16SemiBoldWhite = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white);
  static TextStyle font14DarkBlueMed = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColor.darkBlue);
}
