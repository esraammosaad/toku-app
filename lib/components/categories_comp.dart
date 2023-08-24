import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key, this.text, this.color, this.ontap});
  Color? color;
  String? text;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 60,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
