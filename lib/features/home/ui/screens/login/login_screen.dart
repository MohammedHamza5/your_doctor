import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_doctor_3/core/theming/styles.dart';
import 'package:your_doctor_3/core/widgets/app_button.dart';
import 'package:your_doctor_3/core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureTextField = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayNormal,
                ),
                SizedBox(height: 36.h),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: "Email",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureTextField,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureTextField = !isObscureTextField;
                            });
                          },
                          child: Icon(isObscureTextField
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueNormal,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      AppButton(
                        onPressed: () {},
                        text: 'Login',
                        textStyle: TextStyles.font16WhitesemiBold,
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'By logging, you agree to our ',
                              style: TextStyles.font13GrayNormal,
                            ),
                            TextSpan(
                              text: 'Terms & Conditions ',
                              style: TextStyles.font13blackNormal,
                            ),
                            TextSpan(
                              text: 'and ',
                              style: TextStyles.font13GrayNormal
                                  .copyWith(height: 1.5),
                            ),
                            TextSpan(
                              text: 'PrivacyPolicy.',
                              style: TextStyles.font13blackNormal,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyles.font13blackNormal,
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyles.font13BlueNormal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
