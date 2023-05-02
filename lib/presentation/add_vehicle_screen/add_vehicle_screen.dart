import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/app_bar/appbar_image.dart';
import 'package:quick_park/widgets/app_bar/custom_app_bar.dart';
import 'package:quick_park/widgets/custom_button.dart';

class AddVehicleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(63),
                leadingWidth: 53,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(23),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 30, top: 20, bottom: 19),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: Text("Vehicle Details",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold25
                        .copyWith(letterSpacing: getHorizontalSize(0.12)))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 60),
                    child: Padding(
                        padding: getPadding(left: 12, right: 14, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: getPadding(top: 17, bottom: 17),
                                  decoration: AppDecoration.outlineBlack900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage39,
                                            height: getSize(171),
                                            width: getSize(171),
                                            margin: getMargin(top: 2)),
                                        Padding(
                                            padding:
                                                getPadding(top: 45, bottom: 25),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(68),
                                                      width: getHorizontalSize(
                                                          152),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Text(
                                                                    "KL 10 B 3945",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium25
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.12)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Text(
                                                                    "George",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold25
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.12))))
                                                          ])),
                                                  Text("4 - Wheeler",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))
                                                ]))
                                      ])),
                              Container(
                                  margin: getMargin(top: 38),
                                  padding: getPadding(
                                      left: 10, top: 39, right: 10, bottom: 39),
                                  decoration: AppDecoration.outlineBlack900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage40,
                                            height: getVerticalSize(111),
                                            width: getHorizontalSize(183),
                                            margin: getMargin(
                                                left: 7, top: 14, bottom: 2)),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("KL 63 D 3690",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12))),
                                                  Text("Akil",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12))),
                                                  Text("2 - Wheeler",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))
                                                ]))
                                      ]))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(74),
                width: getHorizontalSize(272),
                text: "Add Vehicle",
                margin: getMargin(left: 83, right: 75, bottom: 59),
                fontStyle: ButtonFontStyle.PoppinsBold25,
                onTap: () {
                  onTapAddvehicle(context);
                })));
  }

  onTapAddvehicle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vehicleScreen);
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
