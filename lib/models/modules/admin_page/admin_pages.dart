import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

import 'package:clinica_reabilitacao/models/widget/card_widget.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 18,
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
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
              ),
              const SizedBox(height: 30),
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
                    ),
                    CardWidget(
                      cardName: 'Cadastrar Médico',
                      iconCard: Image.asset('assets/images/addDoctor.png'),
                    ),
                    CardWidget(
                      cardName: 'Cadastrar Procedimento',
                      iconCard: Image.asset('assets/images/addProcedure.png'),
                    ),
                    CardWidget(
                      cardName: 'Gerar Relatório',
                      iconCard: Image.asset('assets/images/generateReport.png'),
                    ),
                    Expanded(
                      child: CardWidget(
                        cardName: 'Cadastrar Clinica',
                        iconCard: Image.asset('assets/images/addClinic.png'),
                      ),
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
