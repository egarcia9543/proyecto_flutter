import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final String forgotLabel;

  const ForgotPassword({
    super.key,
    required this.forgotLabel
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Text(forgotLabel,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
          ),
        ),
      );
  }
}
