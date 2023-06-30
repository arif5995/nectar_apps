import 'package:flutter/material.dart';

class TextFormFieldCustom {
  static Widget NormalInput({
    required String label,
    required String hint,
    required TextInputType textInputType,
    required String? Function(String?) validation,
  }) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
      ),
      validator: validation
    );
  }
}

