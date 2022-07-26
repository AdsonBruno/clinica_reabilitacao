import 'package:clinica_reabilitacao/models/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/widget/card_widget.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(
          appBarName: 'Adminstrador da clinica',
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 18,
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const MainBarWidget(appBarName: 'Página de administrador'),
              const SizedBox(height: 10),
              Flexible(
                child: GridView.count(
                  primary: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    CardWidget(
                      cardName: 'Cadastrar Paciente',
                      iconCard: Image.asset('assets/images/addPatient.png'),
                      onTap: () => Navigator.pushNamed(
                          context, '/patientRegistrationPage'),
                    ),
                    CardWidget(
                      cardName: 'Cadastrar Médico',
                      iconCard: Image.asset('assets/images/addDoctor.png'),
                      onTap: () {
                        Navigator.pushNamed(context, '/doctorRegistration');
                      },
                    ),
                    CardWidget(
                      cardName: 'Cadastrar Procedimento',
                      iconCard: Image.asset('assets/images/addProcedure.png'),
                      onTap: () => Navigator.pushNamed(
                          context, '/procedureRegistrationPage'),
                    ),
                    CardWidget(
                      cardName: 'Gerar Relatório',
                      iconCard: Image.asset('assets/images/generateReport.png'),
                    ),
                    CardWidget(
                      cardName: 'Cadastrar Clinica',
                      iconCard: Image.asset('assets/images/addClinic.png'),
                      onTap: () => Navigator.pushNamed(
                          context, '/clinicRegistrationPage'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
