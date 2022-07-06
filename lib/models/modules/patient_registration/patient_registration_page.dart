import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';
import 'package:clinica_reabilitacao/models/widget/button_widget.dart';
import 'package:clinica_reabilitacao/models/widget/input_text.dart';
import 'package:clinica_reabilitacao/models/widget/main_bar.dart';
import 'package:flutter/material.dart';

class PatientRegistrationPage extends StatefulWidget {
  const PatientRegistrationPage({Key? key}) : super(key: key);

  @override
  State<PatientRegistrationPage> createState() =>
      _PatientRegistrationPageState();
}

class _PatientRegistrationPageState extends State<PatientRegistrationPage> {
  int _currentStep = 0;

  TextEditingController fullName = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();

  TextEditingController state = TextEditingController();
  TextEditingController cep = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController cityCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      const ColorScheme.light(primary: AppColors.platinumBlue),
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
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            if (_currentStep != 0)
                              Expanded(
                                child: ButtonWidget(
                                  nameButton: 'Voltar',
                                  onPressed: details.onStepCancel,
                                  colorName: AppColors.delete,
                                ),
                              ),
                            const SizedBox(width: 12),
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
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
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
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 4),
              InputTextWidget(
                controller: fullName,
                labelText: 'Nome completo',
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
                labelText: 'Data de nascimento',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: phoneNumber,
                labelText: 'Celular',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: email,
                labelText: 'Email',
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: const Text('Contato'),
          content: Column(
            children: [
              const SizedBox(height: 4),
              InputTextWidget(
                controller: state,
                labelText: 'Estado',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              InputTextWidget(
                controller: cep,
                labelText: 'CEP',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: InputTextWidget(
                      controller: city,
                      labelText: 'Cidade',
                      textInputAction: TextInputAction.next,
                    ),
                    flex: 2,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: InputTextWidget(
                      controller: cityCode,
                      labelText: 'Cód Cidade',
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
          title: const Text('Revisar informações'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              Text(
                'Celular: ${phoneNumber.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Email: ${email.text}',
                style: TextStyles.textBase,
              ),
              const SizedBox(height: 15),
              Text(
                'Estado: ${state.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'CEP: ${cep.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Cidade: ${city.text}',
                style: TextStyles.textBase,
              ),
              Text(
                'Código cidade: ${cityCode.text}',
                style: TextStyles.textBase,
              ),
            ],
          ),
        )
      ];
}
