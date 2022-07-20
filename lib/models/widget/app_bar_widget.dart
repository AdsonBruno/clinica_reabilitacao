import 'package:clinica_reabilitacao/models/widget/card_perfil_widget.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    required this.appBarName,
    this.heightAppBar = 60,
  }) : super(key: key);

  final String appBarName;
  final double? heightAppBar;

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarName,
        style: TextStyles.nameButton,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10, top: 10),
          child: CardPerfilWidget(),
        )
      ],
    );
  }
}
