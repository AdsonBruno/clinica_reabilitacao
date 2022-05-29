import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

class MainBarWidget extends StatelessWidget {
  const MainBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            width: 61,
            height: 61,
            child: Row(children: [
              const Icon(
                Icons.exit_to_app,
                size: 30,
                color: AppColors.second,
              ),
              Text(
                'Sair',
                style: TextStyles.subtitleButton,
              ),
            ]),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          // color: AppColors.black,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            // color: AppColors.black,
          ),
          child: Image.asset(
            'assets/icons/userIcon.png',
          ),
        ),
      ],
    );
  }
}
