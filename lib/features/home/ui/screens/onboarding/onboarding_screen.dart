import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_doctor_3/features/home/ui/screens/onboarding/widgets/doc_image_and_text.dart';
import 'package:your_doctor_3/features/home/ui/screens/onboarding/widgets/doc_logo_and_name.dart';
import 'package:your_doctor_3/features/home/ui/screens/onboarding/widgets/get_start_button.dart';
import '../../../../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: 30.h , bottom: 30.h),
            child: Column(
              children: [
               const DocLogoAndName(),
                SizedBox(height: 30.h,),
                const DocImageAndText(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.'
                      ,style: TextStyles.font13GrayLageral,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h,),
                      const GetStartButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}