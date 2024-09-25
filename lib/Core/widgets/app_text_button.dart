// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors/Core/helper/extension.dart';
import 'package:doctors/Core/routing/routes.dart';
import 'package:doctors/Core/theming/app_color.dart';
import 'package:doctors/Core/theming/styles.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const AppTextButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ButtonStyle(
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50.h)),
        backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: AppTextStyles.font16SemiBoldWhite),
    );;
  }
}
