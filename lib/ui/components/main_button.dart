import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  final String title;
  final void Function() onPressed;
  final bool? isEnabled;
  final String? backgroundColor;
  final String? textColor;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final double? borderRadius;
  final String? borderColor;
  final double? borderWidth;
  final double? elevation;
  final double? fontSize;
  final bool? isBold;

  const MainButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isEnabled,
    this.backgroundColor,
    this.textColor,
    this.paddingHorizontal,
    this.paddingVertical,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.elevation,
    this.fontSize,
    this.isBold,
  });

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.isEnabled != false ? () => widget.onPressed() : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor != null ? Color(int.parse(widget.backgroundColor!)) : null,
        foregroundColor: widget.textColor != null ? Color(int.parse(widget.textColor!)) : null,
        padding: EdgeInsets.symmetric(
          horizontal: widget.paddingHorizontal ?? 16.0,
          vertical: widget.paddingVertical ?? 8.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
          side: widget.borderColor != null
              ? BorderSide(
                  color: Color(int.parse(widget.borderColor!)),
                  width: widget.borderWidth ?? 1.0,
                )
              : BorderSide.none,
        ),
        elevation: widget.elevation ?? 2.0,
      ),
      child: Text(
        widget.title,
        style: TextStyle(
          fontSize: widget.fontSize ?? 16.0,
          fontWeight: widget.isBold == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
