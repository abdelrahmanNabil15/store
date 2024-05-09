import 'package:flutter/material.dart';

class RoundedToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const RoundedToggleButton({super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).toggleButtonsTheme.selectedColor : null,
          borderRadius: BorderRadius.circular(25.0), // Set your desired radius
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
          child: Text(text),
        ),
      ),
    );
  }
}
