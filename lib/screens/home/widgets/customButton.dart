import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/core/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isDisabled;
  final Color color;
  final Color bgColor;

  const CustomButton({
    Key key,
    this.onTap,
    this.title,
    this.isDisabled = false,
    this.color,
    this.bgColor,
  }) : super(key: key);

  CustomButton.search({
    VoidCallback onTap,
    String title,
    bool isDisabled = false,
  })  : this.onTap = onTap,
        this.title = title,
        this.isDisabled = isDisabled,
        this.color = Colors.white,
        this.bgColor = AppColors.secondary;

  CustomButton.favorite({
    VoidCallback onTap,
    String title,
    bool isDisabled = false,
  })  : this.onTap = onTap,
        this.title = title,
        this.isDisabled = isDisabled,
        this.color = AppColors.secondary,
        this.bgColor = AppColors.yellow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 45,
      child: TextButton(
        onPressed: isDisabled ? null : onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isDisabled ? AppColors.greyLight : bgColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.openSans(
            color: color,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
