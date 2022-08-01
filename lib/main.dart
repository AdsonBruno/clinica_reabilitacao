import 'package:clinica_reabilitacao/models/modules/clinic_administrator_screens/admin_page/admin_pages.dart';
import 'package:clinica_reabilitacao/models/modules/clinic_administrator_screens/clinic_registration_page/clinic_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/clinic_administrator_screens/doctor_registration/doctor_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/clinic_administrator_screens/patient_registration/patient_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/clinic_administrator_screens/procedure_registration_page/procedure_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/user_screens/doctor_page/doctor_page.dart';
import 'package:flutter/material.dart';
import 'package:clinica_reabilitacao/models/modules/login/login_page.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/loginPage',
    routes: {
      '/loginPage': (context) => const LoginPage(),
      '/adminPage': (context) => const AdminPage(),
      '/doctorRegistration': (context) => const DoctorRegistrationPage(),
      '/patientRegistrationPage': (context) => const PatientRegistrationPage(),
      '/procedureRegistrationPage': (context) =>
          const ProcedureRegistrationPage(),
      '/clinicRegistrationPage': (context) => const ClinicRegistrationPage(),
      '/doctorMainScreen': (context) => const DoctorMainScreen(),
    },
  ));
}
