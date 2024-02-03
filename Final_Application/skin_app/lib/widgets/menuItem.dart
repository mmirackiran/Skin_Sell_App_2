import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(width: 6),
            Text(title),
          ],
        ),
      ),
    );
  }
}
