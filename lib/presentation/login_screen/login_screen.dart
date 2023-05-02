import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/custom_button.dart';
import 'package:quick_park/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 20, top: 50, right: 20, bottom: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(top: 167),
                              child: Text("Welcome Back",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold30)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailController,
                              hintText: "Email address",
                              margin: getMargin(left: 16, top: 74),
                              variant: TextFormFieldVariant.OutlineBlack9003f,
                              fontStyle: TextFormFieldFontStyle.InterRegular16,
                              textInputType: TextInputType.emailAddress),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: passwordController,
                              hintText: "Password",
                              margin: getMargin(left: 16, top: 58),
                              variant: TextFormFieldVariant.OutlineBlack9003f_1,
                              fontStyle: TextFormFieldFontStyle.InterRegular16,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(63),
                              text: "Sign In",
                              margin: getMargin(left: 16, top: 84),
                              fontStyle: ButtonFontStyle.InterRegular22,
                              onTap: () {
                                onTapSignin(context);
                              }),
                          Padding(
                              padding: getPadding(top: 22),
                              child: Text("Forgot your password?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanRegular12
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.6)))),
                          Spacer(),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "You don't have an account yet? ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray300,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.6))),
                                TextSpan(
                                    text: "Sign up",
                                    style: TextStyle(
                                        color: ColorConstant.greenA400,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.6)))
                              ]),
                              textAlign: TextAlign.left)
                        ])))));
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parkScreen);
  }
}
