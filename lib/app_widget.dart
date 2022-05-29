import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/modules/login/login_page.dart';
import 'package:clinica_reabilitacao/models/modules/admin_page/admin_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinica de Reabilitação',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: AppColors.backgroundColor),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/adminPage": (context) => const AdminPage(),
      },
    );
  }
}
