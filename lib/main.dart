import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/modules/admin_page/admin_pages.dart';
import 'package:clinica_reabilitacao/models/themes/app_colors.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
    ),
    home: const AdminPage(),
  ));
}
