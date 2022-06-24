import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

class GenericButtonWidget extends StatelessWidget {
  const GenericButtonWidget(
      {Key? key,
      required this.nameButton,
      this.routeName,
      this.buttonColor,
      this.buttonHeight,
      this.buttonWidth,
      this.radiusButton})
      : super(key: key);

  final String nameButton;
  final Navigator? routeName;
  final Color? buttonColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? radiusButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          // Navigator.pushNamed(context, "/adminPage");
          routeName;
        },
        child: Container(
          width: 228,
          height: 63,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.second,
          ),
          child: Center(
            child: Text(
              'Entrar',
              style: TextStyles.nameButton,
            ),
          ),
        ),
      ),
    );
  }
}
