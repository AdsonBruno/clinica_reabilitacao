import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.cardName,
    this.iconCard,
  }) : super(key: key);

  final String cardName;
  final Image? iconCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.red,
      child: Container(
        width: 170,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.primary,
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Center(
              child: Text(
                cardName,
                style: TextStyles.titleCard,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: iconCard!,
          ),
        ]),
      ),
    );
  }
}
