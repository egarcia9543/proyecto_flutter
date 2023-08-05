import 'package:flutter/material.dart';

class MySign extends StatelessWidget {

  final Function()? onTap;
  final String text;
  final String route;

  const MySign({
    super.key,
    this.onTap,
    required this.text,
    required this.route
});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
                fontWeight: FontWeight.w600
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(route,
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
