import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:flutter/material.dart';

class DerivLargeText extends Text {
  const DerivLargeText(String data, { super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,}) : super(data, style: FoundationStyle.largeTextStyle,);

}