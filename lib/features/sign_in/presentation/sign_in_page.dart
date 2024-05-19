
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:case_management_tool/constants/app_primitive_extensions.dart';
import 'package:case_management_tool/core/base_classes/base_page.dart';
import 'package:case_management_tool/core/base_classes/base_state.dart';
import 'package:case_management_tool/core/locator.dart';
import 'package:case_management_tool/core/navigation/app_router.dart';
import 'package:case_management_tool/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:case_management_tool/features/sign_in/presentation/widgets/sign_in_with_apple_form_button.dart';
import 'package:case_management_tool/features/sign_in/presentation/widgets/sign_in_with_google_button.dart';
import 'package:case_management_tool/features/widgets/c_form_buttons.dart';
import 'package:case_management_tool/features/widgets/c_form_text_field.dart';
import 'package:case_management_tool/features/widgets/c_preloader.dart';
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

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
      listener: (context, state){

        //SignInWithGoogleButtonClicked
        if(state is SignInWithGoogleButtonClickedState && state.dataState == DataState.loading){
          cPreloader(context: context);
        }

        if(state is SignInWithGoogleButtonClickedState && state.dataState == DataState.success){

        }

        if(state is SignInWithGoogleButtonClickedState && state.dataState == DataState.error){

        }

        //Sign in with Email and password
        if(state is SignInEmailAndPasswordState && state.dataState == DataState.loading){
          cPreloader(context: context);
        }
        if(state is SignInEmailAndPasswordState && state.dataState == DataState.success){
          context.router.pushAndPopUntil(
              const DashboardRoute(),
              predicate: (Route<dynamic> route) => false);
        }
        if(state is SignInEmailAndPasswordState && state.dataState == DataState.error){

        }

      },
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
                 Center(
                   child: SizedBox(
                   width: MediaQuery.sizeOf(context).width - 50,
                   height: 100,
                   child: const Placeholder(),
                 ),),
                 20.height,
                 const Divider(),
                 20.height,
                 Center(
                   child: CText(title: getLocalization().signInUsingEmailAddress,style:const TextStyle() ,),
                 ),
                 30.height,
                Form(
                  key: _formKey ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CText(title: getLocalization().emailAddress,style:const TextStyle() ,),
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
                        CText(title: getLocalization().password,style:const TextStyle() ,),
                        20.height,
                        CFormTextField(
                            controller: _passwordController,
                            labelText: getLocalization().password,
                            validator: (value ) {
                              if (value!.isEmpty) {
                                return getLocalization().pleaseEnterPassword;
                              }
                            }

                        ),

                        40.height,
                        CFormButton(isActive: true,
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                getBloc().add(SignInEmailAndPasswordEvent(
                                    signInEntity: SignInEntity(
                                        password: _passwordController.text,
                                        email: _userNameController.text)));
                              }
                            }, buttonText: getLocalization().signIn),
                      ],
                    )
                ),
                 20.height,
                 const Divider(),
                 20.height,
                 Center(
                   child: CText(title: getLocalization().otherSignInMethods,style:const TextStyle() ,),
                 ),
                 30.height,
                 SignInWithAppleFormButton(onResponse: (credential){
                   //TODO: call the ios flow for sign in with apple
                 }),
                 20.height,
                 SignInWithGoogleButton(
                     isActive: true,
                     onPressed:()=> getBloc().add(SignInWithGoogleButtonClickedEvent()),
                     buttonText: getLocalization().signInWithGoogle),
                 30.height






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
