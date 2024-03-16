import 'package:flutter/material.dart';
import 'package:end_hunger/core/utils/size_utils.dart';
import 'package:end_hunger/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPortLligatSansTeal400 =>
      theme.textTheme.bodySmall!.portLligatSans.copyWith(
        color: appTheme.teal400,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeLightblueA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA700,
      );
  // Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
}

extension on TextStyle {
  TextStyle get portLligatSans {
    return copyWith(
      fontFamily: 'Port Lligat Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
