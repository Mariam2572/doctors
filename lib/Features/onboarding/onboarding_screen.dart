import 'package:doctors/Core/theming/styles.dart';
import 'package:doctors/Features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctors/Features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctors/Features/onboarding/widgets/get_starting_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            const DoctorImageAndText(),
            Text(
              'Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.',
              style: TextStyles.font10RegularGrey,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            const GetStartingButton()
          ],
        ),
      ),
    )));
  }
}
