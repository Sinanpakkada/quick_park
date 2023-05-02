import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/app_bar/appbar_image.dart';
import 'package:quick_park/widgets/app_bar/custom_app_bar.dart';
import 'package:quick_park/widgets/custom_button.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(116),
                leadingWidth: 46,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(23),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 23, top: 21, bottom: 18),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: Text("Ticket Details",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium30
                        .copyWith(letterSpacing: getHorizontalSize(0.9)))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 28),
                    child: Padding(
                        padding: getPadding(bottom: 2),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle4430,
                                  height: getVerticalSize(240),
                                  width: getHorizontalSize(368),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(23))),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Chinnakada : Parking level 2",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.6)))),
                              Container(
                                  height: getVerticalSize(317),
                                  width: getHorizontalSize(201),
                                  margin: getMargin(top: 4),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 13, right: 9),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("A 23",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsExtraBold80
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          2.4))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 33,
                                                              top: 167),
                                                          child: Text(
                                                              "07-03-23",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold20
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.6))))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage38,
                                            height: getSize(201),
                                            width: getSize(201),
                                            alignment: Alignment.bottomCenter,
                                            margin: getMargin(bottom: 23))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("10:00 - 10:30 AM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold25.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.75)))),
                              CustomButton(
                                  height: getVerticalSize(59),
                                  text: "cancel slot",
                                  margin: getMargin(top: 3),
                                  variant: ButtonVariant.FillRedA700,
                                  padding: ButtonPadding.PaddingAll10,
                                  fontStyle: ButtonFontStyle.PoppinsSemiBold25,
                                  onTap: () {
                                    onTapCancelslot(context);
                                  }),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 7),
                                      padding: getPadding(
                                          left: 137,
                                          top: 7,
                                          right: 137,
                                          bottom: 7),
                                      decoration: AppDecoration.fillTealA400
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder29),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Text("Extend my slot",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold20
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.6))))
                                          ])))
                            ]))))));
  }

  onTapCancelslot(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cancelScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
