import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget commonTextField(
    {required TextEditingController controller,
    required BuildContext context,
    required String hinttext}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextField(
      textAlign: TextAlign.start,
      textDirection: TextDirection.ltr,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: hinttext,
        alignLabelWithHint: true,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        fillColor: Theme.of(context).colorScheme.secondary,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
        contentPadding: const EdgeInsets.only(left: 5),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
    ),
  );
}
