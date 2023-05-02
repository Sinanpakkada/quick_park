import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/custom_button.dart';

class SuccessScreen extends StatelessWidget {
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
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 112),
                              child: Padding(
                                  padding: getPadding(
                                      left: 32, right: 34, bottom: 65),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getVerticalSize(16),
                                              width: getHorizontalSize(23),
                                              margin:
                                                  getMargin(top: 7, bottom: 6),
                                              onTap: () {
                                                onTapImgArrowleft(context);
                                              }),
                                          Padding(
                                              padding: getPadding(left: 23),
                                              child: Text("Back",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium20
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.6))))
                                        ]),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(418),
                                                width: getHorizontalSize(328),
                                                margin: getMargin(top: 121),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage41,
                                                          height: getSize(327),
                                                          width: getSize(327),
                                                          alignment: Alignment
                                                              .topCenter),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      315),
                                                              child: Text(
                                                                  "Vehicle \nadded successfully",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtPoppinsBold30
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.9)))))
                                                    ]))),
                                        CustomButton(
                                            height: getVerticalSize(61),
                                            text: "DONE",
                                            margin:
                                                getMargin(left: 21, top: 134),
                                            shape: ButtonShape.RoundedBorder20,
                                            padding: ButtonPadding.PaddingAll10,
                                            onTap: () {
                                              onTapDone(context);
                                            },
                                            alignment: Alignment.centerRight)
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parkScreen);
  }
}
