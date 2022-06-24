import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      width: size.width,
                      height: 300,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.elliptical(250, 180),
                            bottomLeft: Radius.elliptical(100, 30)),
                      ),
                      child: Align(
                        alignment: const FractionalOffset(0.5, 0.7),
                        child: Image.asset('assets/images/consultancy.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 57),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Bem-vindo(a)',
                      style: TextStyles.titleWelcomeLogin,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 43),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                labelText: 'Usuário',
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Senha',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, "/adminPage");
                                Navigator.pushNamed(context, '/adminPage');
                              },
                              child: Container(
                                width: 228,
                                height: 63,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: AppColors.second,
                                ),
                                child: Center(
                                  child: Text(
                                    'Entrar',
                                    style: TextStyles.nameButton,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
