import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 49, top: 261, right: 49, bottom: 261),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup13),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 4),
                                        child: Text("QuickPark",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanBold60))
                                  ]))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(63),
                          text: "Sign In",
                          margin: getMargin(left: 28, right: 28),
                          fontStyle: ButtonFontStyle.InterMedium22,
                          onTap: () {
                            onTapSignin(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(62),
                          text: "Sign Up",
                          margin: getMargin(left: 28, top: 16, right: 28),
                          variant: ButtonVariant.OutlineCyan200,
                          fontStyle: ButtonFontStyle.InterMedium22Cyan200,
                          onTap: () {
                            onTapSignup(context);
                          }),
                      Container(
                          height: getVerticalSize(25),
                          width: getHorizontalSize(245),
                          margin: getMargin(top: 25, bottom: 31),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: getHorizontalSize(245),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "By logging in or registering, you agree to our\n",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.cyan200,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))),
                                              TextSpan(
                                                  text: "Terms of Service",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.cyan200,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))),
                                              TextSpan(
                                                  text: " and ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.cyan200,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))),
                                              TextSpan(
                                                  text: "Privacy Policy",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.cyan200,
                                                      fontSize: getFontSize(10),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5)))
                                            ]),
                                            textAlign: TextAlign.center))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 21,
                                            top: 10,
                                            right: 21,
                                            bottom: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Terms of Service",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanBold10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Text("Privacy Policy",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanBold10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))
                                            ])))
                              ]))
                    ]))));
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
