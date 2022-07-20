import 'package:flutter/material.dart';

class CardPerfilWidget extends StatelessWidget {
  const CardPerfilWidget({
    Key? key,
    this.userImage,
  }) : super(key: key);

  final Image? userImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.blueGrey[50],
        ),
        child: userImage ?? Image.asset('assets/icons/userIcon.png'),
      ),
    );
  }
}
