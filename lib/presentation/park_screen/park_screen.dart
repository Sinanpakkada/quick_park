import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:quick_park/core/app_export.dart';

class ParkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 60),
                    child: Padding(
                        padding: getPadding(left: 21, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Home",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium30
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.9)))),
                              Container(
                                  height: getVerticalSize(214),
                                  width: getHorizontalSize(383),
                                  margin: getMargin(left: 1, top: 82),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4393,
                                            height: getVerticalSize(214),
                                            width: getHorizontalSize(383),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(17)),
                                            alignment: Alignment.center,
                                            onTap: () {
                                              onTapImgRectangle4393(context);
                                            }),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 25,
                                                    top: 8,
                                                    right: 16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(children: [
                                                        Text("Chinnakada Lane",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold30
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.9))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar2,
                                                            height: getSize(21),
                                                            width: getSize(21),
                                                            margin: getMargin(
                                                                left: 14,
                                                                top: 13,
                                                                bottom: 10)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStar221x21,
                                                            height: getSize(21),
                                                            width: getSize(21),
                                                            margin: getMargin(
                                                                left: 4,
                                                                top: 13,
                                                                bottom: 10))
                                                      ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "Availability : High",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold22
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.66)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 13),
                                                          child: Text(
                                                              "Distance : 100 m",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold22
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.66)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2, top: 16),
                                                          child: Text(
                                                              "Price/hr : 30 rs",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold22
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.66))))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 23, top: 42),
                                  child: Text("Nearby Spots",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold22.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.66)))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(left: 2, top: 13),
                                      padding: getPadding(
                                          left: 6, top: 9, right: 6, bottom: 9),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder17),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(left: 16),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Kadapakkada park",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.6))),
                                                      Spacer(),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar21,
                                                          height: getSize(21),
                                                          width: getSize(21),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 7)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar3,
                                                          height: getSize(21),
                                                          width: getSize(21),
                                                          margin: getMargin(
                                                              left: 9,
                                                              top: 3,
                                                              bottom: 5)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar1,
                                                          height: getSize(21),
                                                          width: getSize(21),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 3,
                                                              bottom: 5))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 16,
                                                    bottom: 3),
                                                child: Text(
                                                    "Availability : low",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular22
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.66))))
                                          ]))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 21),
                                      padding: getPadding(
                                          left: 23,
                                          top: 14,
                                          right: 23,
                                          bottom: 14),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder17,
                                          image: DecorationImage(
                                              image: fs.Svg(
                                                  ImageConstant.imgGroup4),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 1, top: 6, right: 3),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          "Kallumthazham sideway",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.6))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar4,
                                                          height: getSize(21),
                                                          width: getSize(21),
                                                          margin: getMargin(
                                                              top: 2,
                                                              bottom: 6)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar5,
                                                          height: getSize(21),
                                                          width: getSize(21),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 7))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 8),
                                                child: Text(
                                                    "Availability :  High ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular22
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.66)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 41,
                                                    right: 43),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Kundara park",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.6))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar6,
                                                          height: getSize(21),
                                                          width: getSize(21),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 7))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Text(
                                                    "Availability : low",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular22
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.66))))
                                          ])))
                            ])))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 28, right: 21, bottom: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: getVerticalSize(80),
                          width: getHorizontalSize(68),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Park",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage27,
                                height: getSize(68),
                                width: getSize(68),
                                alignment: Alignment.topCenter)
                          ])),
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLocationonfil,
                                height: getSize(56),
                                width: getSize(56),
                                onTap: () {
                                  onTapImgLocationonfil(context);
                                }),
                            Padding(
                                padding: getPadding(left: 13, top: 7),
                                child: Text("Map",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36))))
                          ]),
                      Container(
                          height: getVerticalSize(79),
                          width: getHorizontalSize(63),
                          margin: getMargin(bottom: 1),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Account",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle4396,
                                height: getSize(63),
                                width: getSize(63),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(17)),
                                alignment: Alignment.topCenter,
                                onTap: () {
                                  onTapImgRectangle4396(context);
                                })
                          ]))
                    ]))));
  }

  onTapImgRectangle4393(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.directionScreen);
  }

  onTapImgLocationonfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mapScreen);
  }

  onTapImgRectangle4396(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
