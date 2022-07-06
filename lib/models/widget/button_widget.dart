import 'package:flutter/material.dart';
import 'package:clinica_reabilitacao/models/themes/app_text_styles.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    Key? key,
    required this.nameButton,
    required this.onPressed,
    this.colorName,
  }) : super(key: key);

  final String nameButton;
  final void Function()? onPressed;
  final Color? colorName;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(widget.nameButton),
      onPressed: widget.onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        // primary: AppColors.nextButton,
        primary: widget.colorName,
        textStyle: TextStyles.nameButton,
        padding: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
