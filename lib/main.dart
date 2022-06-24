// import 'package:clinica_reabilitacao/models/modules/doctor_registration/doctor_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/login/login_page.dart';
import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/modules/admin_page/admin_pages.dart';
// import 'package:clinica_reabilitacao/models/modules/login/login_page.dart';
// import 'package:clinica_reabilitacao/app_widget.dart';
import 'package:clinica_reabilitacao/models/themes/app_colors.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
    ),
    debugShowCheckedModeBanner: false,

    // home: const AppWidget(),
    // home: const LoginPage(),
    // home: const DoctorRegistrationPage(),
    // Ao definir uma initialRoute, não definir uma Home
    initialRoute: '/loginPage',
    routes: {
      '/loginPage': (context) => const LoginPage(),
      '/adminPage': (context) => const AdminPage(),
    },
  ));
}
