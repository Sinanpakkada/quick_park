import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/custom_button.dart';
import 'package:quick_park/widgets/custom_checkbox.dart';
import 'package:quick_park/widgets/custom_icon_button.dart';
import 'package:quick_park/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isCheckbox = false;

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
                        getPadding(left: 20, top: 29, right: 20, bottom: 29),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomIconButton(
                              height: 55,
                              width: 55,
                              margin: getMargin(left: 8, top: 51),
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapBtnArrowleft(context);
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftCyan200)),
                          Padding(
                              padding: getPadding(top: 82),
                              child: Text("Create Your Account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold30)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: nameController,
                              hintText: "Name",
                              margin: getMargin(left: 8, top: 95, right: 8)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailController,
                              hintText: "Email",
                              margin: getMargin(left: 16, top: 37),
                              textInputType: TextInputType.emailAddress),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: passwordController,
                              hintText: "Password",
                              margin: getMargin(left: 12, top: 48, right: 4),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          Spacer(),
                          CustomCheckbox(
                              width: getHorizontalSize(353),
                              text: "I have read the privacy policy.",
                              iconSize: getHorizontalSize(24),
                              value: isCheckbox,
                              margin: getMargin(left: 18, right: 18),
                              fontStyle:
                                  CheckboxFontStyle.MontserratRomanRegular14,
                              isRightCheck: true,
                              onChange: (value) {
                                isCheckbox = value;
                              })
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(63),
                text: "Sign Up",
                margin: getMargin(left: 28, right: 27, bottom: 36),
                fontStyle: ButtonFontStyle.MontserratRomanRegular22,
                onTap: () {
                  onTapSignup(context);
                })));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parkScreen);
  }
}
