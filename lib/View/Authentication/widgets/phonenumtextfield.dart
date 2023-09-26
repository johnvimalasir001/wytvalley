import 'package:flutter/material.dart';

class PhoneNumTextField extends StatefulWidget {
  final String hintText;
  final Widget prefixIcon;
  final TextEditingController textController;
  const PhoneNumTextField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.textController});

  @override
  State<PhoneNumTextField> createState() => _PhoneNumTextFieldState();
}

class _PhoneNumTextFieldState extends State<PhoneNumTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(),
      cursorColor: Colors.black,
      controller: widget.textController,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        prefixIcon: widget.prefixIcon,
      ),
    );
  }
}
