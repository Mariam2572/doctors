import 'package:doctors/Core/helper/extension.dart';
import 'package:doctors/Core/routing/routes.dart';
import 'package:doctors/Core/theming/app_color.dart';
import 'package:doctors/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartingButton extends StatelessWidget {
  const GetStartingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w,bottom: 52.h),
      child: ElevatedButton(
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
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: Text('Get Started', style: TextStyles.font16semiboldwhite),
      ),
    );
  }
}
