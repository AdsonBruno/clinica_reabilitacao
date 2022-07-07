import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';
import 'package:clinica_reabilitacao/models/themes/app_colors.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.obscureText,
    this.textInputAction,
  }) : super(key: key);

  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        focusColor: AppColors.primary,
        labelText: labelText,
        hintStyle: TextStyles.hintText,
        hintText: hintText,
      ),
      obscureText: obscureText == null ? false : true,
      textInputAction: textInputAction,
    );
  }
}
