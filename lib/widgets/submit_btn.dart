import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  Function() ontap;
  SubmitButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
        ontap,
      
      child: Container(
        height: 50,
        width: 150,
        child: Center(
          child: Text("Login"),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
