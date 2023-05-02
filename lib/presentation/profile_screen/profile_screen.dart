import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Container(
                                height: getVerticalSize(292),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              padding: getPadding(
                                                  left: 151,
                                                  top: 54,
                                                  right: 151,
                                                  bottom: 54),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 4),
                                                        child: Text(
                                                            "My Profile",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold25
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.12))))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgWhatsappimage20230502,
                                          height: getVerticalSize(153),
                                          width: getHorizontalSize(123),
                                          alignment: Alignment.bottomCenter)
                                    ])),
                            Padding(
                                padding: getPadding(top: 16),
                                child: Text("APARNA SUNIL",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold20)),
                            Padding(
                                padding:
                                    getPadding(left: 51, top: 60, right: 37),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Personal Details",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold25
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.75))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle16,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(54),
                                          margin: getMargin(top: 10, bottom: 6))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 49, top: 26, right: 37),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Vehicle Details",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold25
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.75))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle16,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(54),
                                          margin: getMargin(top: 5, bottom: 11),
                                          onTap: () {
                                            onTapImgRectanglesevent(context);
                                          })
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 49, top: 28, right: 37),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Settings",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold25
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.75))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle16,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(54),
                                          margin: getMargin(top: 4, bottom: 12))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 49, top: 26, right: 37),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Change password",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold25
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.75))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle16,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(54),
                                          margin: getMargin(
                                              left: 46, top: 3, bottom: 13))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 51, top: 12, right: 37),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("e-Wallet",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold25
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.75))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle16,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(54),
                                          margin: getMargin(top: 13, bottom: 3))
                                    ])),
                            Container(
                                height: getVerticalSize(161),
                                width: double.maxFinite,
                                margin: getMargin(top: 52, bottom: 46),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage4,
                                          height: getVerticalSize(32),
                                          width: getHorizontalSize(85),
                                          alignment: Alignment.bottomRight,
                                          margin:
                                              getMargin(right: 79, bottom: 55)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              padding: getPadding(
                                                  left: 33,
                                                  top: 28,
                                                  right: 33,
                                                  bottom: 28),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 15),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMaterialsymbol,
                                                              height:
                                                                  getVerticalSize(
                                                                      27),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 11,
                                                                      top: 3,
                                                                      bottom:
                                                                          5),
                                                              child: Text(
                                                                  "Version",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold12
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.36)))),
                                                          Spacer(),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 4,
                                                                      bottom:
                                                                          4),
                                                              child: Text(
                                                                  "1.0.0",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsLight12
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.36))))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 32,
                                                            bottom: 26),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgClock,
                                                              height:
                                                                  getVerticalSize(
                                                                      19),
                                                              width:
                                                                  getHorizontalSize(
                                                                      21)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 15,
                                                                      top: 1),
                                                              child: Text(
                                                                  "Sign out",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold12Red400
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.36))))
                                                        ]))
                                                  ])))
                                    ]))
                          ])))
                    ]))));
  }

  onTapImgRectanglesevent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addVehicleScreen);
  }
}
