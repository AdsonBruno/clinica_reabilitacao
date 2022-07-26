import 'package:flutter/material.dart';

Function showAlertDialogWidget(
    BuildContext context, String contentDialogMessage) {
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
    // content: const Text(
    //     'Os dados foram salvos com sucesso. Deseja cadastrar novo usuário?'),
    content: Text(contentDialogMessage),
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

  return showDialog;
}
