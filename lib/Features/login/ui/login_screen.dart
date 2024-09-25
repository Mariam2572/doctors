import 'package:doctors/Core/helper/spacing.dart';
import 'package:doctors/Core/theming/styles.dart';
import 'package:doctors/Core/widgets/app_text_form_field.dart';
import 'package:doctors/Core/widgets/app_text_button.dart';
import 'package:doctors/Features/login/ui/widgets/dont_have_account.dart';
import 'package:doctors/Features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome Back!',
                  style: AppTextStyles.font24blueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait \n to see what you've been up to since you last\n logged in.",
                  style: AppTextStyles.font14RegularGrey,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Email',
                        ),
                        verticalSpace(18),
                        AppTextFormField(
                          hintText: 'password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),),
                                  
                        ),
                        verticalSpace(24),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('forgot Password',style: AppTextStyles.font13RegularBlue,
                          
                          ),
                          
                        ),
                        verticalSpace(20),
                        AppTextButton(text: 'Login',onPressed: () {
                          
                        },),
                        verticalSpace(16),
                        TermsAndConditionsText(),
                        verticalSpace(60),
                       DontHaveAccountText()
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
