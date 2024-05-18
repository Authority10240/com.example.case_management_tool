import 'package:case_management_tool/constants/app_text_styles.dart';
import 'package:case_management_tool/constants/sizes.dart';
import 'package:case_management_tool/core/constants.dart';
import 'package:flutter/material.dart';

class CFormTextField<BaseBloc,BaseState> extends StatelessWidget {
  CFormTextField({
    this.readOnly,
    super.key,
    required this.controller,
    this.onTap,
    this.prefixIcon,
    required this.labelText,
    this.suffixIcon,
    this.width,
    this.enable,
    required this.validator,
    this.obscure});
  bool? enable = true;
  bool? obscure = false;
  final TextEditingController controller;
  final Widget? prefixIcon ;
  final Widget? suffixIcon;
  final String labelText;
  final double? width;
  final String? Function(String?)  validator;
  final Function()? onTap;
  final bool? readOnly;


  @override
  Widget build(BuildContext context) {
    return Center(

      child: TextFormField(
        onTap:()=> onTap!= null ?onTap!():null,
        enabled: enable ,
        validator: this.validator ,
        style: AppTextStyles.textFieldTextStyle,
        obscureText: obscure?? false,
        controller: controller,
        readOnly: readOnly?? false,
        decoration:  InputDecoration(
          hintStyle: TextStyle(color: Colors.grey[400] ),
          suffixIcon: SizedBox(
              height: 15,
              child: suffixIcon) ,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColorScheme.primaryOpt ,
                  width: 1),
              borderRadius:  BorderRadius.all(Radius.circular(boarderRadius)) ),
          hintText: labelText,


        ),

      ),
    );
  }
}