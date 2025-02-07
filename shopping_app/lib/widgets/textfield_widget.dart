import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldCustom extends StatefulWidget {
  TextFieldCustom(
      {super.key,
      required this.hint,
      required this.labelText,
      this.icon,
      this.isPassword = false,
      required this.controller});
  final String hint;
  final Text labelText;
  final TextEditingController controller;
  Icon? icon;
  bool isPassword;

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 40,
      height: 60,
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle:
              const TextStyle(color: Color.fromARGB(255, 119, 119, 119)),
          suffixIconColor: const Color(0xffdbd9d9),
          focusColor: const Color(0xffdbd9d9),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffdbd9d9)),
              borderRadius: BorderRadius.circular(13)),
          label: widget.labelText,
          suffixIcon: widget.icon ??
              const Icon(
                Icons.circle,
                color: Colors.white,
              ), //trying to make they eye an icon button that switch isPassword state
          hintStyle: const TextStyle(color: Color(0xffdbd9d9)),
          hintText: widget.hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(136, 219, 217, 217)),
              borderRadius: BorderRadius.circular(13)),
        ),
      ),
    );
  }
}
