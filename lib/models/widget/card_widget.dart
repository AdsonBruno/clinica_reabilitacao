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
      onTap: () => showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('O botão funciona'),
        ),
      ),
      child: Ink(
        width: 170,
        height: 199,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.primary,
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              cardName,
              style: TextStyles.titleCard,
            ),
          ),
          iconCard!,
        ]),
      ),
    );
  }
}
