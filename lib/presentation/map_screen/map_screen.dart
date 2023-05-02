import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/custom_button.dart';
import 'package:quick_park/widgets/custom_text_form_field.dart';

class MapScreen extends StatelessWidget {
  TextEditingController directionsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10004,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  68,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 11,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 28,
                  top: 17,
                  right: 28,
                ),
                padding: getPadding(
                  left: 31,
                  top: 8,
                  right: 31,
                  bottom: 8,
                ),
                decoration: AppDecoration.fillCyan10001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 7,
                        bottom: 2,
                      ),
                      child: Text(
                        "Search Spots",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium20.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.12,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage29,
                      height: getVerticalSize(
                        36,
                      ),
                      width: getHorizontalSize(
                        41,
                      ),
                      margin: getMargin(
                        top: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  738,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 42,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          left: 21,
                          top: 9,
                          right: 21,
                          bottom: 9,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder23,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 7,
                                top: 182,
                              ),
                              child: Text(
                                "Nearest Spot",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold30.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.9,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 11,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Chinnakada Lane",
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: getHorizontalSize(
                                          0.54,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " ( 6523",
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: getHorizontalSize(
                                          0.54,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ")",
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(
                                          0.54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 11,
                                top: 6,
                              ),
                              child: Text(
                                "Distance : 100m",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsLight18.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.54,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 14,
                                right: 7,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextFormField(
                                    width: getHorizontalSize(
                                      141,
                                    ),
                                    focusNode: FocusNode(),
                                    controller: directionsController,
                                    hintText: "Directions",
                                    variant:
                                        TextFormFieldVariant.OutlineCyan200,
                                    shape: TextFormFieldShape.RoundedBorder10,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.PoppinsMedium18,
                                    textInputAction: TextInputAction.done,
                                  ),
                                  CustomButton(
                                    height: getVerticalSize(
                                      44,
                                    ),
                                    width: getHorizontalSize(
                                      141,
                                    ),
                                    text: "Park",
                                    variant: ButtonVariant.OutlineBlack9003f_2,
                                    shape: ButtonShape.RoundedBorder10,
                                    padding: ButtonPadding.PaddingAll10,
                                    fontStyle: ButtonFontStyle.PoppinsMedium18,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 10,
                                right: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      81,
                                    ),
                                    width: getHorizontalSize(
                                      69,
                                    ),
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "Park",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsSemiBold12
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.36,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage27,
                                          height: getSize(
                                            69,
                                          ),
                                          width: getSize(
                                            69,
                                          ),
                                          alignment: Alignment.topCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage3,
                                            height: getVerticalSize(
                                              63,
                                            ),
                                            width: getHorizontalSize(
                                              52,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage30,
                                            height: getSize(
                                              57,
                                            ),
                                            width: getSize(
                                              57,
                                            ),
                                            margin: getMargin(
                                              left: 103,
                                              bottom: 6,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                            ),
                                            child: Text(
                                              "Map",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.36,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 118,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Account",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.36,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          460,
                        ),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage24460x430,
                              height: getVerticalSize(
                                460,
                              ),
                              width: getHorizontalSize(
                                430,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: getPadding(
                                  right: 33,
                                  bottom: 94,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        right: 63,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage3339x28,
                                            height: getVerticalSize(
                                              39,
                                            ),
                                            width: getHorizontalSize(
                                              28,
                                            ),
                                            margin: getMargin(
                                              bottom: 20,
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              59,
                                            ),
                                            width: getHorizontalSize(
                                              49,
                                            ),
                                            margin: getMargin(
                                              left: 27,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage3339x28,
                                                  height: getVerticalSize(
                                                    39,
                                                  ),
                                                  width: getHorizontalSize(
                                                    28,
                                                  ),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage3339x28,
                                                  height: getVerticalSize(
                                                    39,
                                                  ),
                                                  width: getHorizontalSize(
                                                    28,
                                                  ),
                                                  alignment: Alignment.topRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 30,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage3339x28,
                                            height: getVerticalSize(
                                              32,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                            margin: getMargin(
                                              bottom: 19,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage3339x28,
                                            height: getVerticalSize(
                                              32,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                            margin: getMargin(
                                              left: 53,
                                              top: 19,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage3339x28,
                                            height: getVerticalSize(
                                              32,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                            margin: getMargin(
                                              left: 161,
                                              bottom: 19,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage3339x28,
                                      height: getVerticalSize(
                                        39,
                                      ),
                                      width: getHorizontalSize(
                                        28,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      margin: getMargin(
                                        left: 38,
                                        top: 14,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage3339x28,
                                      height: getVerticalSize(
                                        39,
                                      ),
                                      width: getHorizontalSize(
                                        28,
                                      ),
                                      margin: getMargin(
                                        right: 77,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
