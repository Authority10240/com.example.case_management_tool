
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:case_management_tool/constants/app_primitive_extensions.dart';
import 'package:case_management_tool/core/base_classes/base_page.dart';
import 'package:case_management_tool/core/locator.dart';
import 'package:case_management_tool/features/widgets/c_form_buttons.dart';
import 'package:case_management_tool/features/widgets/c_form_text_field.dart';
import 'package:case_management_tool/features/widgets/c_text.dart';
import 'package:case_management_tool/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'bloc/sign_in_bloc.dart';

@RoutePage()
class SignInPage extends BasePage {
  const SignInPage({super.key});


  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends BasePageState<SignInPage, SignInBloc> {

  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

    @override
  PreferredSizeWidget? buildAppbar() {
    return null;
  }

  @override
  Widget buildView(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInPageState>(
      listener: (context, state){},
      builder: (context, state) {
         return SizedBox(
           width: MediaQuery.sizeOf(context).width,
           height: MediaQuery.sizeOf(context).height,
           child:  Padding(
             padding: const EdgeInsets.only(left: 20, right: 20 ),
             child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 30.height,
                 Center( child: SizedBox(
                   width: MediaQuery.sizeOf(context).width-50,
                   height: 250,
                   child: const Placeholder(),
                 ),),
                 20.height,
                 Divider(),
                 20.height,
                 Center(
                   child: CText(title: getLocalization().signInUsingEmailAddress,style:TextStyle() ,),
                 ),
                 30.height,
                 CText(title: getLocalization().emailAddress,style:TextStyle() ,),
                 20.height,
                 CFormTextField(
                     controller: _userNameController,
                     labelText: getLocalization().emailAddress,
                     validator: (value ) {
                        if(value!.isEmpty){
                        return getLocalization().pleaseEnterEmailAddress;
                        }
                        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)){
                        return getLocalization().pleaseEnterAValidEmailAddress;
                        }}),
                 20.height,
                  CText(title: getLocalization().password,style:TextStyle() ,),
                 20.height,
                 CFormTextField(
                     controller: _passwordController,
                     labelText: getLocalization().password,
                     validator: (value ) {
                       if(value!.isEmpty){
                         return getLocalization().pleaseEnterEmailAddress;
                       }
                       if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                           .hasMatch(value)){
                         return getLocalization().pleaseEnterAValidEmailAddress;
                       }}),

                 50.height,
                 CFormButton(isActive: true,
                     onPressed: (){

                 }, buttonText: getLocalization().signIn),
                 20.height,
                 Divider(),
                 20.height,
                 Center(
                   child: CText(title: getLocalization().otherSignInMethods,style:TextStyle() ,),
                 ),
                 30.height,






               ],
             ),
           ),
           ),
          );
      },
    );
  }


  @override
  SignInBloc initBloc() {
    return locator<SignInBloc>();
  }

  @override
  AppLocalizations initLocalization() {
    return locator<AppLocalizations>();
  }


}
