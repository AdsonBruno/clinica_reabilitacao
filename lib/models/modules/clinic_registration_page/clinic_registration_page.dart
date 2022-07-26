import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/widget/alert_dialog_widget.dart';
import 'package:clinica_reabilitacao/models/widget/app_bar_widget.dart';
import 'package:clinica_reabilitacao/models/widget/button_widget.dart';
import 'package:clinica_reabilitacao/models/widget/input_text.dart';
import 'package:flutter/material.dart';

class ClinicRegistrationPage extends StatelessWidget {
  const ClinicRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(appBarName: 'Cadastro de Clinica'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 29,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Expanded(
                    child: InputTextWidget(labelText: 'Nome da Clinica'),
                    flex: 2,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InputTextWidget(labelText: 'Código Clinina'),
                    flex: 1,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const InputTextWidget(labelText: 'Endereço'),
              const SizedBox(height: 15),
              const InputTextWidget(labelText: 'Código Clinina'),
              const SizedBox(height: 15),
              ButtonWidget(
                nameButton: 'Cadastrar Clinica',
                onPressed: () => showAlertDialogWidget(context,
                    'Dados Cadastrados com sucesso, Deseja cadastrar novos dados?'),
                colorName: AppColors.nextButton,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
