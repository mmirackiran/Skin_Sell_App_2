import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final String price;
  final VoidCallback onPressed;

  const ButtonItem({
    Key? key,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 170, 0, 255)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      child: Text(
        price,
        style: TextStyle(fontSize: 11, color: Colors.white),
      ),
    );
  }
}
