import 'package:case_management_tool/constants/sizes.dart';
import 'package:case_management_tool/core/constants.dart';
import 'package:flutter/material.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({required this.isActive,super.key, required this.onPressed, required this.buttonText});
  final String buttonText;
  final Function onPressed ;
  final bool isActive;


  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 44,
        decoration: BoxDecoration(
          color: AppColorScheme.primary,
          borderRadius: BorderRadius.circular(boarderRadius),
        ),
        child:TextButton(
          // group923Pb (101:3723)
          onPressed: isActive? ()=>
              onPressed()
              : null,
          child:
          Center(
            child:
            Center(
              child:
              Text(
                buttonText,
                textAlign: TextAlign.center,
                //  style: AppTextStyles.buttonTextStyle
              ),
            ),
          ),
        ),

      );
  }
}