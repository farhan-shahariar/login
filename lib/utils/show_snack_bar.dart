import 'package:flutter/material.dart';

void showSnackBar(
  BuildContext context,
  String message, [
  bool isError = false,
]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: isError ? Colors.white : null,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      backgroundColor: isError ? Colors.red : null,
    ),
  );
}
