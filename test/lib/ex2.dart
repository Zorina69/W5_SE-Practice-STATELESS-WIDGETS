import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Week5",
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Custom Button Example"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                label: "Primary Left",
                icon: Icons.check,
                type: ButtonType.primary,
                iconPosition: IconPosition.left,
              ),
              SizedBox(height: 15),
              CustomButton(
                label: "Secondary Right",
                icon: Icons.star,
                type: ButtonType.secondary,
                iconPosition: IconPosition.right,
              ),
              SizedBox(height: 15),
              CustomButton(
                label: "Disabled",
                icon: Icons.block,
                type: ButtonType.disabled,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

/// Enum for button type (color)
enum ButtonType { primary, secondary, disabled }

/// Enum for icon position (left or right)
enum IconPosition { left, right }

/// CustomButton widget
class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  Color _getColor() {
    switch (type) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor();

    return GestureDetector(
      onTap: type == ButtonType.disabled ? null : () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('You clicked "$label"')),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: iconPosition == IconPosition.left
              ? [
                  Icon(icon, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ]
              : [
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Icon(icon, color: Colors.white),
                ],
        ),
      ),
    );
  }
}
