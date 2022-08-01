import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/widget/alert_dialog_widget.dart';
import 'package:clinica_reabilitacao/models/widget/app_bar_widget.dart';
import 'package:clinica_reabilitacao/models/widget/button_widget.dart';
import 'package:clinica_reabilitacao/models/widget/input_text.dart';
import 'package:flutter/material.dart';

class ProcedureRegistrationPage extends StatefulWidget {
  const ProcedureRegistrationPage({Key? key}) : super(key: key);

  @override
  State<ProcedureRegistrationPage> createState() =>
      _ProcedureRegistrationPageState();
}

class _ProcedureRegistrationPageState extends State<ProcedureRegistrationPage> {
  final occupationArea = TextEditingController();
  final procedureName = TextEditingController();
  final procedureCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(appBarName: 'Cadastrar procedimento'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 29),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const InputTextWidget(
                  labelText: 'Area de autação',
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Expanded(
                      child: InputTextWidget(
                        labelText: 'Nome do procedimento',
                      ),
                      flex: 2,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: InputTextWidget(
                        labelText: 'Cod Procedimento',
                      ),
                      flex: 1,
                    )
                  ],
                ),
                const SizedBox(height: 15),
                ButtonWidget(
                  nameButton: 'Cadastrar Procedimento',
                  colorName: AppColors.nextButton,
                  onPressed: () {
                    // showAlertDialogWidget(context);
                    showAlertDialogWidget(context,
                        'Dados salvos com sucesso. Deseja cadastrar novo procedimento?');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
