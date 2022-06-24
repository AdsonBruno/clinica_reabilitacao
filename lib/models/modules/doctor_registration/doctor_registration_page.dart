import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/widget/main_bar.dart';
import 'package:clinica_reabilitacao/models/widget/input_text.dart';

enum SexGender { masculino, feminino }

class DoctorRegistrationPage extends StatefulWidget {
  const DoctorRegistrationPage({Key? key}) : super(key: key);

  @override
  State<DoctorRegistrationPage> createState() => _DoctorRegistrationPageState();
}

class _DoctorRegistrationPageState extends State<DoctorRegistrationPage> {
  int _currentStep = 0;
  SexGender? _gender = SexGender.masculino;

  final fullName = TextEditingController();
  final cpf = TextEditingController();
  final birthDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 29),
          child: Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const MainBarWidget(),
                Expanded(
                  child: Stepper(
                    currentStep: _currentStep,
                    margin: EdgeInsetsGeometry.infinity,
                    type: StepperType.horizontal,
                    onStepCancel: () {
                      if (_currentStep > 0) {
                        setState(() {
                          _currentStep -= 1;
                        });
                      } else if (_currentStep == 0) {}
                    },
                    onStepContinue: () {
                      if (_currentStep < 0) {
                        setState(() {
                          _currentStep += 1;
                        });
                      }
                    },
                    onStepTapped: (int index) {
                      setState(() {
                        _currentStep = index;
                      });
                    },
                    controlsBuilder:
                        (BuildContext context, ControlsDetails details) {
                      return Row(
                        children: const [],
                      );
                    },
                    steps: <Step>[
                      Step(
                        state: _currentStep > 0
                            ? StepState.complete
                            : StepState.indexed,
                        isActive: _currentStep > 0,
                        title: const Text('Dados Pessoais'),
                        content: Column(
                          children: [
                            const InputTextWidget(
                              hintText: 'Ex. Fulano de Tal',
                              labelText: 'Nome Completo',
                            ),
                            const SizedBox(height: 40),
                            const InputTextWidget(
                              hintText: '12345678910',
                              labelText: 'CPF',
                            ),
                            const SizedBox(height: 40),
                            const InputTextWidget(
                              labelText: 'Data de Nascimento',
                              hintText: '0101111',
                            ),
                            const SizedBox(height: 40),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: const Text('Masculino'),
                                      contentPadding:
                                          const EdgeInsets.only(left: 4),
                                      leading: Radio<SexGender>(
                                          value: SexGender.masculino,
                                          groupValue: _gender,
                                          activeColor: AppColors.platinumBlue,
                                          onChanged: (SexGender? value) {
                                            setState(() {
                                              _gender = value;
                                            });
                                          }),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: const Text('Feminino'),
                                      contentPadding:
                                          const EdgeInsets.only(left: 5),
                                      leading: Radio<SexGender>(
                                        value: SexGender.feminino,
                                        groupValue: _gender,
                                        activeColor: AppColors.platinumBlue,
                                        onChanged: (SexGender? value) {
                                          setState(() {
                                            _gender = value;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Step(
                        state: _currentStep > 1
                            ? StepState.complete
                            : StepState.indexed,
                        isActive: _currentStep > 1,
                        title: Column(
                          children: const [
                            Text('Endereço'),
                          ],
                        ),
                        content: Column(
                          children: const [InputTextWidget(labelText: 'CEP')],
                        ),
                      ),
                      Step(
                        state: _currentStep > 2
                            ? StepState.complete
                            : StepState.indexed,
                        isActive: _currentStep > 2,
                        title: const Text('Login'),
                        content: Container(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
