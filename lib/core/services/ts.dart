import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ts {
  static TextStyle _bold(double size, Color color, {bool isUnderline = false, bool isLineThrough = false}) {
    return TextStyle(
      fontFamily: 'Noyh',
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
      decoration: isUnderline
          ? TextDecoration.underline
          : isLineThrough
              ? TextDecoration.lineThrough
              : TextDecoration.none,
    );
  }

  static TextStyle custom(double size, Color color, {bool isUnderline = false, bool isLineThrough = false}) {
    return TextStyle(
      fontFamily: 'Noyh',
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
      decoration: isUnderline
          ? TextDecoration.underline
          : isLineThrough
              ? TextDecoration.lineThrough
              : TextDecoration.none,
    );
  }

  static TextStyle _demi(double size, Color color, {bool isUnderline = false}) {
    return TextStyle(
      fontFamily: 'Noyh',
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: color,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle _text(double size, Color color, {bool isUnderline = false}) {
    return TextStyle(
      fontFamily: 'Noyh',
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle text10(Color color, {bool isUnderline = false}) {
    return _text(10.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text11(Color color, {bool isUnderline = false}) {
    return _text(11.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text12(Color color, {bool isUnderline = false}) {
    return _text(12.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text13(Color color, {bool isUnderline = false}) {
    return _text(13.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text14(Color color, {bool isUnderline = false}) {
    return _text(14.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text15(Color color, {bool isUnderline = false}) {
    return _text(15.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text16(Color color, {bool isUnderline = false}) {
    return _text(16.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text17(Color color, {bool isUnderline = false}) {
    return _text(17.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text18(Color color, {bool isUnderline = false}) {
    return _text(18.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text19(Color color, {bool isUnderline = false}) {
    return _text(19.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text20(Color color, {bool isUnderline = false}) {
    return _text(20.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text21(Color color, {bool isUnderline = false}) {
    return _text(21.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text22(Color color, {bool isUnderline = false}) {
    return _text(22.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text23(Color color, {bool isUnderline = false}) {
    return _text(23.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text24(Color color, {bool isUnderline = false}) {
    return _text(24.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text25(Color color, {bool isUnderline = false}) {
    return _text(25.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text26(Color color, {bool isUnderline = false}) {
    return _text(26.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text27(Color color, {bool isUnderline = false}) {
    return _text(27.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text28(Color color, {bool isUnderline = false}) {
    return _text(28.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text29(Color color, {bool isUnderline = false}) {
    return _text(29.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text30(Color color, {bool isUnderline = false}) {
    return _text(30.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text31(Color color, {bool isUnderline = false}) {
    return _text(31.sp, color, isUnderline: isUnderline);
  }

  static TextStyle text32(Color color, {bool isUnderline = false}) {
    return _text(32.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi10(Color color, {bool isUnderline = false}) {
    return _demi(10.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi11(Color color, {bool isUnderline = false}) {
    return _demi(11.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi12(Color color, {bool isUnderline = false}) {
    return _demi(12.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi13(Color color, {bool isUnderline = false}) {
    return _demi(13.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi14(Color color, {bool isUnderline = false}) {
    return _demi(14.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi15(Color color, {bool isUnderline = false}) {
    return _demi(15.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi16(Color color, {bool isUnderline = false}) {
    return _demi(16.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi17(Color color, {bool isUnderline = false}) {
    return _demi(17.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi18(Color color, {bool isUnderline = false}) {
    return _demi(18.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi19(Color color, {bool isUnderline = false}) {
    return _demi(19.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi20(Color color, {bool isUnderline = false}) {
    return _demi(20.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi21(Color color, {bool isUnderline = false}) {
    return _demi(21.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi22(Color color, {bool isUnderline = false}) {
    return _demi(22.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi23(Color color, {bool isUnderline = false}) {
    return _demi(23.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi24(Color color, {bool isUnderline = false}) {
    return _demi(24.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi25(Color color, {bool isUnderline = false}) {
    return _demi(25.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi26(Color color, {bool isUnderline = false}) {
    return _demi(26.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi27(Color color, {bool isUnderline = false}) {
    return _demi(27.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi28(Color color, {bool isUnderline = false}) {
    return _demi(28.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi29(Color color, {bool isUnderline = false}) {
    return _demi(29.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi30(Color color, {bool isUnderline = false}) {
    return _demi(30.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi31(Color color, {bool isUnderline = false}) {
    return _demi(31.sp, color, isUnderline: isUnderline);
  }

  static TextStyle demi32(Color color, {bool isUnderline = false}) {
    return _demi(32.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold10(Color color, {bool isUnderline = false}) {
    return _bold(10.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold11(Color color, {bool isUnderline = false, bool isLineThrough = false}) {
    return _bold(11.sp, color, isUnderline: isUnderline, isLineThrough: isLineThrough);
  }

  static TextStyle bold12(Color color, {bool isUnderline = false}) {
    return _bold(12.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold13(Color color, {bool isUnderline = false}) {
    return _bold(13.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold14(Color color, {bool isUnderline = false}) {
    return _bold(14.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold15(Color color, {bool isUnderline = false}) {
    return _bold(15.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold16(Color color, {bool isUnderline = false}) {
    return _bold(16.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold17(Color color, {bool isUnderline = false}) {
    return _bold(17.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold18(Color color, {bool isUnderline = false}) {
    return _bold(18.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold19(Color color, {bool isUnderline = false}) {
    return _bold(19.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold20(Color color, {bool isUnderline = false}) {
    return _bold(20.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold21(Color color, {bool isUnderline = false}) {
    return _bold(21.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold22(Color color, {bool isUnderline = false}) {
    return _bold(22.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold23(Color color, {bool isUnderline = false}) {
    return _bold(23.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold24(Color color, {bool isUnderline = false}) {
    return _bold(24.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold25(Color color, {bool isUnderline = false}) {
    return _bold(25.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold26(Color color, {bool isUnderline = false}) {
    return _bold(26.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold27(Color color, {bool isUnderline = false}) {
    return _bold(27.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold28(Color color, {bool isUnderline = false}) {
    return _bold(28.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold29(Color color, {bool isUnderline = false}) {
    return _bold(29.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold30(Color color, {bool isUnderline = false}) {
    return _bold(30.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold31(Color color, {bool isUnderline = false}) {
    return _bold(31.sp, color, isUnderline: isUnderline);
  }

  static TextStyle bold32(Color color, {bool isUnderline = false}) {
    return _bold(32.sp, color, isUnderline: isUnderline);
  }
}
