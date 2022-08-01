import 'package:clinica_reabilitacao/models/widget/app_bar_widget.dart';
import 'package:clinica_reabilitacao/models/widget/todo.dart';
import 'package:flutter/material.dart';

class DoctorMainScreen extends StatelessWidget {
  const DoctorMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(appBarName: 'Página do Médico'),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
                    Todo(
                      name: 'Fulano de tal',
                      susCard: '123456-6',
                    ),
                    SizedBox(height: 10),
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
