import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeBluegray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMedium14_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray9001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumIndigoA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA400,
        fontSize: 14.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA7008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 8.fSize,
      );
  // Title text style
  static get titleSmallCeraProWhiteA700 =>
      theme.textTheme.titleSmall!.ceraPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.55),
      );
  static get titleSmallCeraProWhiteA700_1 =>
      theme.textTheme.titleSmall!.ceraPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
      );
  static get titleSmallCeraProWhiteA700_2 =>
      theme.textTheme.titleSmall!.ceraPro.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallGray5001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto;
  static get titleSmallRobotoGray70001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray70001,
      );
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallRobotoPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get ceraPro {
    return copyWith(
      fontFamily: 'Cera Pro',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
