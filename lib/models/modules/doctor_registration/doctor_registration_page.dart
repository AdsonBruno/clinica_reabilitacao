import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/widget/main_bar.dart';
import 'package:clinica_reabilitacao/models/widget/input_text.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';
import 'package:clinica_reabilitacao/models/widget/button_widget.dart';

enum SexGender { masculino, feminino }

class DoctorRegistrationPage extends StatefulWidget {
  const DoctorRegistrationPage({Key? key}) : super(key: key);

  @override
  State<DoctorRegistrationPage> createState() => _DoctorRegistrationPageState();
}

class _DoctorRegistrationPageState extends State<DoctorRegistrationPage> {
  int _currentStep = 0;
  // SexGender? _gender = SexGender.masculino;

  final fullName = TextEditingController();
  final cpf = TextEditingController();
  final birthDate = TextEditingController();

  final cep = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();
  final neighborhood = TextEditingController();
  final street = TextEditingController();
  final houseNumber = TextEditingController();

  final username = TextEditingController();
  final password = TextEditingController();
  final repeatPassword = TextEditingController();
  final susCard = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 29),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MainBarWidget(),
              Theme(
                data: Theme.of(context).copyWith(
                  colorScheme:
                      const ColorScheme.light(primary: AppColors.second),
                ),
                child: Flexible(
                  child: Stepper(
                    type: StepperType.vertical,
                    steps: getSteps(),
                    currentStep: _currentStep,
                    onStepContinue: () {
                      final isLastStep = _currentStep == getSteps().length - 1;

                      if (isLastStep) {
                        print('Completed');
                        showAlertDialog(context);

                        // send data to server
                      } else {
                        setState(() {
                          _currentStep += 1;
                        });
                      }
                    },
                    onStepTapped: (step) => setState(() => _currentStep = step),
                    onStepCancel: _currentStep == 0
                        ? null
                        : () => setState(() => _currentStep -= 1),
                    controlsBuilder: (context, ControlsDetails details) {
                      return Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: Row(
                          children: [
                            Expanded(
                              child: ButtonWidget(
                                nameButton:
                                    _currentStep == getSteps().length - 1
                                        ? 'Confirmar'
                                        : 'Próximo',
                                onPressed: details.onStepContinue,
                                colorName: AppColors.nextButton,
                              ),
                            ),
                            const SizedBox(width: 12),
                            if (_currentStep != 0)
                              Expanded(
                                child: ButtonWidget(
                                  nameButton: 'Voltar',
                                  onPressed: details.onStepCancel,
                                  colorName: AppColors.delete,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 0,
          title: const Text('Dados Pessoais'),
          content: Column(
            children: [
              const SizedBox(height: 4),
              InputTextWidget(
                controller: fullName,
                labelText: 'Nome Completo',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: cpf,
                labelText: 'CPF',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: birthDate,
                labelText: 'Data de Nascimento',
                textInputAction: TextInputAction.next,
              )
            ],
          ),
        ),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: const Text('Endereço'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 5),
              InputTextWidget(
                controller: cep,
                labelText: 'CEP',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: state,
                labelText: 'Estado',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: city,
                labelText: 'Cidade',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: neighborhood,
                labelText: 'Bairro',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: InputTextWidget(
                      controller: street,
                      labelText: 'Rua',
                      textInputAction: TextInputAction.next,
                    ),
                    flex: 2,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: InputTextWidget(
                      controller: houseNumber,
                      labelText: 'Número',
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Step(
          state: _currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 2,
          title: const Text('Configuração da Conta'),
          content: Column(
            children: [
              InputTextWidget(
                controller: username,
                labelText: 'Nome de usuário',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: password,
                labelText: 'Senha',
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: repeatPassword,
                labelText: 'Repita a senha',
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: susCard,
                labelText: 'Cartão SUS',
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
        Step(
          isActive: _currentStep >= 3,
          title: const Text('Revisar dados'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dados Pessoais',
                style: TextStyles.stepTitle,
              ),
              Text(
                'Nome completo: ${fullName.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'CPF: ${cpf.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Data de nascimento: ${birthDate.text}',
                style: TextStyles.textBase,
              ),
              const SizedBox(height: 15),
              Text('Endereço', style: TextStyles.stepTitle),
              Text(
                'CEP: ${cep.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Estado: ${state.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Cidade: ${city.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Bairro: ${neighborhood.text}',
                style: TextStyles.textBase,
              ),
              Row(
                children: [
                  Text(
                    'Rua: ${street.text}',
                    style: TextStyles.textBase,
                  ),
                  Text(
                    'Número: ${houseNumber.text}',
                    style: TextStyles.textBase,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Configuração da conta',
                style: TextStyles.stepTitle,
              ),
              Text(
                'Nome de usuário: ${username.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Cartão do SUS: ${susCard.text}',
                style: TextStyles.textBase,
              ),
            ],
          ),
        ),
      ];

  showAlertDialog(BuildContext context) {
    Widget noButton = TextButton(
      child: const Text('Não'),
      onPressed: () {
        Navigator.pushNamed(context, '/adminPage');
      },
    );
    Widget yesButton = TextButton(
      child: const Text('Sim'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text('Dialogo de Alerta'),
      content: const Text(
          'Os dados foram salvos com sucesso. Deseja cadastrar novo usuário?'),
      actions: [
        noButton,
        yesButton,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
