import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget get center => Center(child: this);

  Widget paddingAll(double padding) => Padding(
    padding: EdgeInsets.all(padding),
    child: this,
  );

  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
    child: this,
  );
  
  Widget get sliver => SliverToBoxAdapter(child: this);
}
