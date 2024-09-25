// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors/Core/theming/app_color.dart';
import 'package:doctors/Core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;

  // final Function(String?) validator;
  AppTextFormField({
    Key? key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    // required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:contentPadding?? EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 17.h
        ),
        focusedBorder:focusedBorder?? const OutlineInputBorder(
          borderSide:  BorderSide(
            color: AppColor.primaryColor,
            width: 1.3
          ),
       borderRadius: BorderRadius.all(Radius.circular(16))

        ),
        enabledBorder: enabledBorder??
         const OutlineInputBorder(
          borderSide:  BorderSide(
            color: AppColor.lighterGray,
            width: 1.3,

          ),
          borderRadius: BorderRadius.all(Radius.circular(16))
          
        ),
     hintStyle:hintStyle?? AppTextStyles.font14RegularLightGrey,
     hintText: hintText ,
     suffixIcon: suffixIcon,
     fillColor: backgroundColor?? AppColor.moreLightGray,
     filled: true
      ),
      
      obscureText:isObscureText?? false,
      style: AppTextStyles.font14DarkBlueMed,
    );
  }
}
