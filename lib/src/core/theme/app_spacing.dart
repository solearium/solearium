import 'package:flutter/material.dart';

class AppSpacing {
  const AppSpacing._();

  static const double xxs = 4.0;
  static const double xs = 8.0;
  static const double s = 12.0;
  static const double m = 16.0;
  static const double l = 20.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  static const double xxxl = 40.0;

  // Convenience EdgeInsets
  static const EdgeInsets paddingXS = EdgeInsets.all(xs);
  static const EdgeInsets paddingS = EdgeInsets.all(s);
  static const EdgeInsets paddingM = EdgeInsets.all(m);
  static const EdgeInsets paddingL = EdgeInsets.all(l);
  
  // Horizontal Spacers
  static const SizedBox gapW4 = SizedBox(width: xxs);
  static const SizedBox gapW8 = SizedBox(width: xs);
  static const SizedBox gapW12 = SizedBox(width: s);
  static const SizedBox gapW16 = SizedBox(width: m);

  // Vertical Spacers
  static const SizedBox gapH4 = SizedBox(height: xxs);
  static const SizedBox gapH8 = SizedBox(height: xs);
  static const SizedBox gapH12 = SizedBox(height: s);
  static const SizedBox gapH16 = SizedBox(height: m);
  static const SizedBox gapH24 = SizedBox(height: xl);
  static const SizedBox gapH32 = SizedBox(height: xxl);
}
