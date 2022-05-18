import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clinica_reabilitacao/models/themes/app_colors.dart';

class TextStyles {
  static final titleHome = GoogleFonts.dmSans(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final titleRegular = GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static final titleCard = GoogleFonts.dmSans(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static final subtitleButton = GoogleFonts.dmSans(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.second,
  );
}