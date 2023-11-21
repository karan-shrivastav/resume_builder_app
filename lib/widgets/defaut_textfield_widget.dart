import 'package:flutter/material.dart';

class DefaultTextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const DefaultTextFieldWidget({
    super.key,
    this.controller,
    this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
