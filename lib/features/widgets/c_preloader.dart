import 'package:case_management_tool/core/constants.dart';
import 'package:flutter/material.dart';

void  cPreloader ({required BuildContext context}) {
  showDialog(
         context: context,
         builder:(BuildContext context){
      return Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: Colors.transparent,
        child: Center(
          child:CircularProgressIndicator(
            color: AppColorScheme.primary,
            backgroundColor: AppColorScheme.secondary,),)
      );
         });
}

