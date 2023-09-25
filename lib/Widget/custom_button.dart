import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget input;
  final VoidCallback onPressed;
  final Color color;
  final Color inputColor;

  const CustomButton({
    super.key,
    required this.input,
    required this.onPressed,
    required this.color,
    required this.inputColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(inputColor),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      child: input,
    );
  }
}
