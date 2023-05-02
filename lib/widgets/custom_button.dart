import 'package:flutter/material.dart';
import 'package:quick_park/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillRedA700:
        return ColorConstant.redA700;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.cyan100;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.tealA400;
      case ButtonVariant.OutlineBlack9003f_2:
        return ColorConstant.cyan200;
      case ButtonVariant.OutlineCyan200:
        return null;
      default:
        return ColorConstant.cyan200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineCyan200:
        return BorderSide(
          color: ColorConstant.cyan200,
          width: getHorizontalSize(
            3.00,
          ),
        );
      case ButtonVariant.FillCyan200:
      case ButtonVariant.FillRedA700:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.OutlineBlack9003f_1:
      case ButtonVariant.OutlineBlack9003f_2:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineBlack9003f_2:
        return ColorConstant.black9003f;
      case ButtonVariant.FillCyan200:
      case ButtonVariant.OutlineCyan200:
      case ButtonVariant.FillRedA700:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            31.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterMedium22:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium22Cyan200:
        return TextStyle(
          color: ColorConstant.cyan200,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsSemiBold25:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsMedium25:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterRegular22:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.MontserratRomanRegular22:
        return TextStyle(
          color: ColorConstant.gray10003,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsBold40:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            40,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold25:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsMedium18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            30,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder31,
  RoundedBorder20,
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingAll18,
  PaddingAll10,
  PaddingAll5,
}

enum ButtonVariant {
  FillCyan200,
  OutlineCyan200,
  FillRedA700,
  OutlineBlack9003f,
  OutlineBlack9003f_1,
  OutlineBlack9003f_2,
}

enum ButtonFontStyle {
  InterMedium22,
  InterMedium22Cyan200,
  PoppinsSemiBold25,
  PoppinsMedium25,
  InterRegular22,
  MontserratRomanRegular22,
  PoppinsBold40,
  PoppinsSemiBold30,
  PoppinsBold25,
  PoppinsMedium18,
}
