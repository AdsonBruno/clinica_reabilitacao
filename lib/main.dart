import 'package:clinica_reabilitacao/models/modules/clinic_registration_page/clinic_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/procedure_registration_page/procedure_registration_page.dart';
import 'package:flutter/material.dart';
import 'package:clinica_reabilitacao/models/modules/doctor_registration/doctor_registration_page.dart';
import 'package:clinica_reabilitacao/models/modules/login/login_page.dart';
// import 'package:clinica_reabilitacao/models/modules/doctor_registration/doctor_registration_page.dart';

import 'package:clinica_reabilitacao/models/modules/admin_page/admin_pages.dart';
import 'package:clinica_reabilitacao/models/modules/patient_registration/patient_registration_page.dart';
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
    },
  ));
}
