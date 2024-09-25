import 'package:doctors/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.w),
      child: Stack(
        // alignment: Alignment.topCenter,
        children: [
          SvgPicture.asset('assets/svgs/docdoc_logo_opacity.svg'),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.14, 0.4],
              )
            ),
            child: Image.asset('assets/images/onboarding_doctor.png'),
          ),
       Positioned(
        bottom: 30.h,
        left: 0.w,
        right: 0.w,
        child: Text('Best Doctor\n Appointment App',
        textAlign: TextAlign.center,
        style: AppTextStyles.font32BoldBlue.copyWith(
          height: 1.4
        ),
        ),),
        ],
      ),
    );
  }
}