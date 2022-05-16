import 'package:flutter/material.dart';

import 'package:clinica_reabilitacao/models/themes/app_colors.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

// import '../../widget/card_widget.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 29,
                  vertical: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      splashColor: Colors.green,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        child: Row(children: [
                          const Icon(
                            Icons.exit_to_app,
                            size: 30,
                            color: AppColors.second,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Sair',
                              style: TextStyles.subtitleButton,
                            ),
                          )
                        ]),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(60, 60),
                      child: const ClipOval(
                        child: Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
