import 'package:case_management_tool/constants/app_text_styles.dart';
import 'package:case_management_tool/constants/sizes.dart';
import 'package:case_management_tool/core/constants.dart';
import 'package:flutter/material.dart';

class CFormButton extends StatelessWidget {
  const CFormButton({required this.isActive,
    super.key,
    required this.onPressed,
    required this.buttonText});
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
                  style: AppTextStyles.buttonTextStyle
              ),
            ),
          ),
        ),

      );
  }
}


class CSecondaryFormButton extends StatelessWidget {
  const CSecondaryFormButton({super.key,
    required this.isActive,
    required this.onPressed,
    required this.buttonText});

  final bool isActive;
  final Function onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(boarderRadius),
          border: Border.all(color: AppColorScheme.primary)
      ),
      child:TextButton(
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
              //  style: AppTextStyles.secondaryButtonTextStyle
            ),
          ),
        ),
      ),

    );
  }
}

