import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_doctor_3/features/home/ui/screens/login/login_screen.dart';
import 'package:your_doctor_3/features/home/ui/screens/onboarding/onboarding_screen.dart';

import 'core/theming/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: ColorsApp.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          // You can use the library anywhere in the app even in theme
          home: child,
        );
      },
      child: LoginScreen(),
    );
  }
}
