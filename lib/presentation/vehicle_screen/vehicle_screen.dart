import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/app_bar/appbar_image.dart';
import 'package:quick_park/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:quick_park/widgets/app_bar/custom_app_bar.dart';
import 'package:quick_park/widgets/custom_button.dart';
import 'package:quick_park/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class VehicleScreen extends StatelessWidget {
  TextEditingController rectangle4419Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                leadingWidth: 58,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(23),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 35, top: 20, bottom: 19),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                title:
                    AppbarSubtitle3(text: "Back", margin: getMargin(left: 34))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 17),
                    child: Padding(
                        padding: getPadding(left: 59, right: 40, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 33),
                                  child: Text("Vehicle  Details",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold30.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.9)))),
                              Padding(
                                  padding: getPadding(left: 9, top: 41),
                                  child: Text("MODEL",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium22
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.66)))),
                              Container(
                                  height: getVerticalSize(60),
                                  width: getHorizontalSize(330),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.teal300,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(17)))),
                              Container(
                                  height: getVerticalSize(89),
                                  width: getHorizontalSize(330),
                                  margin: getMargin(top: 20),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(60),
                                                width: getHorizontalSize(330),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.teal300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                17))))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(left: 6),
                                                child: Text("NUMBER PLATE",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium20
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.6)))))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 6, top: 11),
                                  child: Text("COLOUR",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.6)))),
                              Container(
                                  height: getVerticalSize(60),
                                  width: getHorizontalSize(330),
                                  margin: getMargin(top: 1),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.teal300,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(17)))),
                              Padding(
                                  padding: getPadding(left: 6, top: 9),
                                  child: Text("TYPE",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium22
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.66)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: rectangle4419Controller,
                                  margin: getMargin(left: 1, top: 9),
                                  variant: TextFormFieldVariant.FillTeal300,
                                  textInputAction: TextInputAction.done),
                              Padding(
                                  padding: getPadding(left: 9, top: 29),
                                  child: Text("OWNER NAME",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.6)))),
                              Container(
                                  height: getVerticalSize(60),
                                  width: getHorizontalSize(330),
                                  margin: getMargin(top: 8),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.teal300,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(17))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(61),
                text: "Let’s Park",
                margin: getMargin(left: 43, right: 44, bottom: 50),
                variant: ButtonVariant.OutlineBlack9003f_2,
                shape: ButtonShape.RoundedBorder20,
                padding: ButtonPadding.PaddingAll10,
                onTap: () {
                  onTapLetspark(context);
                })));
  }

  onTapLetspark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
