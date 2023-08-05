import 'package:flutter/material.dart';

class forgot extends StatelessWidget {
final Function()? onTap;
final String text;

const forgot({
  super.key,
  this.onTap,
  required this.text

});
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed:onTap,
            child: Text(text,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }
}
