import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.openSans(
    color: AppColors.secondary,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle subTitle = GoogleFonts.openSans(
    color: AppColors.secondary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
}
