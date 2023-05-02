import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/app_bar/appbar_image.dart';
import 'package:quick_park/widgets/app_bar/custom_app_bar.dart';
import 'package:quick_park/widgets/custom_button.dart';
import 'package:quick_park/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class DirectionScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(177),
                title: Padding(
                    padding: getPadding(left: 3),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(children: [
                            Padding(
                                padding: getPadding(top: 17, bottom: 9),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarImage(
                                          height: getSize(18),
                                          width: getSize(18),
                                          imagePath: ImageConstant.imgImage34,
                                          margin:
                                              getMargin(left: 11, right: 11)),
                                      AppbarImage(
                                          height: getSize(40),
                                          width: getSize(40),
                                          imagePath: ImageConstant.imgImage35,
                                          margin: getMargin(top: 2)),
                                      AppbarImage(
                                          height: getSize(34),
                                          width: getSize(34),
                                          imagePath: ImageConstant.imgImage33,
                                          margin: getMargin(left: 3, right: 3))
                                    ])),
                            Padding(
                                padding: getPadding(left: 21),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(335),
                                          padding: getPadding(
                                              left: 21,
                                              top: 6,
                                              right: 21,
                                              bottom: 6),
                                          decoration: AppDecoration
                                              .txtOutlineBlack900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder7),
                                          child: Text("Your location",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsLight25)),
                                      Container(
                                          width: getHorizontalSize(335),
                                          margin: getMargin(top: 14),
                                          padding: getPadding(
                                              left: 21,
                                              top: 7,
                                              right: 21,
                                              bottom: 7),
                                          decoration: AppDecoration
                                              .txtOutlineBlack9001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder7),
                                          child: Text("Chinnakada lane",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsLight25))
                                    ]))
                          ])
                        ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 53),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage24,
                                  height: getVerticalSize(460),
                                  width: getHorizontalSize(430)),
                              Padding(
                                  padding: getPadding(left: 20, top: 46),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "1 min ",
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: "(240 m)",
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: getHorizontalSize(372),
                                  margin:
                                      getMargin(left: 20, top: 5, right: 37),
                                  child: Text(
                                      "Fastest route now due to traffic \nconditions",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular25)),
                              Padding(
                                  padding: getPadding(left: 26, top: 13),
                                  child: Row(children: [
                                    CustomButton(
                                        height: getVerticalSize(49),
                                        width: getHorizontalSize(137),
                                        text: "Park",
                                        variant:
                                            ButtonVariant.OutlineBlack9003f,
                                        shape: ButtonShape.RoundedBorder20,
                                        padding: ButtonPadding.PaddingAll5,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsMedium25,
                                        onTap: () {
                                          onTapPark(context);
                                        }),
                                    Container(
                                        height: getVerticalSize(38),
                                        width: getHorizontalSize(103),
                                        margin: getMargin(
                                            left: 13, top: 9, bottom: 1),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomSwitch(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  value: isSelectedSwitch,
                                                  onChanged: (value) {
                                                    isSelectedSwitch = value;
                                                  }),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 23),
                                                      child: Text("Pin",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium25)))
                                            ]))
                                  ]))
                            ]))))));
  }

  onTapPark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ticketScreen);
  }
}
