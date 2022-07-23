import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:xgriddesigntask/constants/my_colors.dart';

class MyTextStyles {
  static TextStyle bold20 = GoogleFonts.montserrat(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: MyColors.black
  );
  static TextStyle semiBold20 = GoogleFonts.montserrat(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: MyColors.black
  );
  static TextStyle semiBold15 = GoogleFonts.montserrat(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      color: MyColors.black
  );
  static TextStyle regular20 = GoogleFonts.montserrat(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      color: MyColors.black
  );
}
