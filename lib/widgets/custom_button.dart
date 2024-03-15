import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      color:
          Theme.of(context).colorScheme.primary,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 55,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white, 
                fontSize: 16.0, 
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
