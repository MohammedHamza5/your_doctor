import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){

        },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all( ColorsApp.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity , 52),),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      ),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ),
    );
  }
}
