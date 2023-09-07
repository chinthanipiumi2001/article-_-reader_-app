import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumCyan300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyan300,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get rammettoOne {
    return copyWith(
      fontFamily: 'Rammetto One',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get salsa {
    return copyWith(
      fontFamily: 'Salsa',
    );
  }

  TextStyle get oleoScriptSwashCaps {
    return copyWith(
      fontFamily: 'Oleo Script Swash Caps',
    );
  }
}
