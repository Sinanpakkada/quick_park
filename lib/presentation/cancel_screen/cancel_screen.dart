import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';
import 'package:quick_park/widgets/app_bar/appbar_image.dart';
import 'package:quick_park/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:quick_park/widgets/app_bar/custom_app_bar.dart';
import 'package:quick_park/widgets/custom_button.dart';

class CancelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray30059,
            appBar: CustomAppBar(
                height: getVerticalSize(102),
                leadingWidth: 54,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 30, top: 16, bottom: 23),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Cancel Parking", margin: getMargin(left: 30))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 82),
                    child: Padding(
                        padding: getPadding(left: 33, right: 32, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(488),
                                  width: getHorizontalSize(365),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4428,
                                            height: getVerticalSize(487),
                                            width: getHorizontalSize(365),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(25)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("Successfull!!",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium30
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.9))))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(342),
                                      margin: getMargin(
                                          left: 16, top: 15, right: 7),
                                      child: Text(
                                          "You have successfully cancelled\nyour parking order! 80 % funds \nwill be returned to your account",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular20
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.6))))),
                              CustomButton(
                                  height: getVerticalSize(74),
                                  text: "OK",
                                  margin:
                                      getMargin(left: 18, top: 24, right: 29),
                                  variant: ButtonVariant.OutlineBlack9003f_1,
                                  shape: ButtonShape.RoundedBorder20,
                                  padding: ButtonPadding.PaddingAll5,
                                  fontStyle: ButtonFontStyle.PoppinsBold40,
                                  onTap: () {
                                    onTapOk(context);
                                  })
                            ]))))));
  }

  onTapOk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parkScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
