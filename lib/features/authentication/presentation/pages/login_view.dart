import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/extensions.dart';
import 'package:store/core/util/asset_manger.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/routes_manager.dart';
import 'package:store/core/util/string_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/core/util/widgets/Loading.dart';
import 'package:store/core/util/widgets/Toast.dart';
import 'package:store/core/util/widgets/custom_snackbar.dart';
import 'package:store/core/util/widgets/show_Loading_dialog.dart';
import 'package:store/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:store/features/authentication/presentation/pages/widgets/Button.dart';
import 'package:store/features/authentication/presentation/pages/widgets/Image_login.dart';
import 'package:store/features/authentication/presentation/pages/widgets/text_feild_form.dart';

CustomToast _customToast = CustomToast();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController useNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _form = GlobalKey<FormState>();
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {

          state.maybeWhen(
              loading: () => showLoaderDialog(  context ),
              success: (String? data) => Navigator.pushReplacementNamed(context, Routes.homeRoute),
              failure: (String message) => Text(message), orElse: () {  });
        },
        builder:(context, state){return  SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Form(
                key: _form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    const SizedBox(height: AppSize.s120 ),
                    ImageCircle(
                      imageAssetName: ImageAssets.imgPerson,
                    ),
                    const SizedBox(height: AppMargin.m16),
                    Text(
                      AppStrings.welcomeBack.tr(context),
                      textAlign: TextAlign.center,
                      style: getBoldStyle(
                          color: ColorManager.colorBlack,
                          fontSize: AppSize.s24),
                    ),
                    CustomTextFieldForm(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      prefixIcon:
                          Icon(Icons.person, color: ColorManager.colorPrimaryLight),
                      hintText: AppStrings.username.tr(context),
                      controller: useNameController,
                      isDarkTheme: Theme.of(context).brightness == Brightness.dark,
                      isHintVisible: true,
                      validator: (String ?val) {
                        if (val!.isEmpty) {
                          return AppStrings.pleaseEnterUserName.tr(context);
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: AppMargin.m8),
                    CustomTextFieldForm(
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      prefixIcon:
                          Icon(Icons.lock, color: ColorManager.colorPrimaryLight),
                      hintText: AppStrings.password.tr(context),
                      controller: passwordController,
                      isDarkTheme: Theme.of(context).brightness == Brightness.dark,
                      isHintVisible: true,
                      validator: (String ?val) {
                        if (val!.isEmpty) {
                          return AppStrings.pleaseEnterPassword.tr(context);
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: AppMargin.m16),
                    CustomButton(
                      text: AppStrings.login.tr(context),
                      onPressed: () {

      if (_form.currentState!.validate() ) {

                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.loginButtonPressed(
                            username: useNameController.text,
                            password: passwordController.text,
                          ),
                        );

                        if(  state == const AuthState.loading()) {
                          showLoaderDialog(  context );
                        }
      }
                      },
                      isDarkTheme: Theme.of(context).brightness == Brightness.dark,
                    ),
                  ],
                ),
              ),
            ),
          );}
        ),

    );
  }
}
