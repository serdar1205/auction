import 'package:auction/theme.dart';
import 'package:flutter/material.dart';

@immutable
class BigText extends Text {
  const BigText(super.data, [this.color]);

  final Color? color;

  @override
  String get data => "${super.data}";

  @override
  TextStyle get style => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.white);

  @override
  TextOverflow get overflow => TextOverflow.fade;

  @override
  int get maxLines => 2;
}

@immutable
class MediumText extends Text {
  const MediumText(super.data, {this.color});

  final Color? color;

 // final int? maxLine;

  @override
  String get data => "${super.data}";

  @override
  TextStyle get style => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.white);

  @override
  TextOverflow get overflow => TextOverflow.fade;

  // @override
  // int get maxLines => maxLine!;
}

@immutable
class SmallText extends Text {
  const SmallText(super.data, {this.color});

  final Color? color;

  //final int? maxLine;

  @override
  String get data => "${super.data}";

  @override
  TextStyle get style => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.white,

  );

  @override
  TextOverflow get overflow => TextOverflow.fade;

  // @override
  // int get maxLines => maxLine!;
}

@immutable
class TimeText extends Text {
  const TimeText(super.data, {this.color});

  final Color? color;

  //final int? maxLine;

  @override
  String get data => "${super.data}";

  @override
  TextStyle get style => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.white,
      letterSpacing: 1.5,
      height: 1.5
  );

  @override
  TextOverflow get overflow => TextOverflow.fade;

// @override
// int get maxLines => maxLine!;
}
