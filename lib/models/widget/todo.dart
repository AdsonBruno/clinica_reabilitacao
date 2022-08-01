import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({
    Key? key,
    required this.name,
    required this.susCard,
  }) : super(key: key);

  final String name;
  final String susCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xFFe2dedc),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Nome: $name',
            style: TextStyles.hintText,
          ),
          Text(
            'Cartão do SUS: $susCard',
            style: TextStyles.hintText,
          ),
        ],
      ),
    );
  }
}
