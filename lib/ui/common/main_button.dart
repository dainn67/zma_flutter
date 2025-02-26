import 'package:flutter/material.dart';
import 'package:stac_test/utils/stac_action_handler.dart';

class MainButton extends StatefulWidget {
  final String title;
  final dynamic onPressed;
  final bool? isEnabled;
  final dynamic backgroundColor;
  final dynamic textColor;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final double? borderRadius;
  final dynamic borderColor;
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

  factory MainButton.fromJson(Map<String, dynamic> json, BuildContext context) {
    return MainButton(
      title: json['title'] ?? '',
      onPressed: () {
        if (json['onPressed'] is String) {
          StacActionHandler.execute(json['onPressed'], context);
        }
      },
      isEnabled: json['isEnabled'],
      backgroundColor: json['backgroundColor'],
      textColor: json['textColor'],
      paddingHorizontal: json['paddingHorizontal']?.toDouble(),
      paddingVertical: json['paddingVertical']?.toDouble(),
      borderRadius: json['borderRadius']?.toDouble(),
      borderColor: json['borderColor'],
      borderWidth: json['borderWidth']?.toDouble(),
      elevation: json['elevation']?.toDouble(),
      fontSize: json['fontSize']?.toDouble(),
      isBold: json['isBold'],
    );
  }

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  Color? _resolveColor(dynamic colorValue) {
    if (colorValue == null) return null;
    if (colorValue is Color) return colorValue;
    if (colorValue is String) return Color(int.parse(colorValue));
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.isEnabled != false ? (widget.onPressed is Function ? widget.onPressed as Function : widget.onPressed) : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: _resolveColor(widget.backgroundColor),
        foregroundColor: _resolveColor(widget.textColor),
        padding: EdgeInsets.symmetric(
          horizontal: widget.paddingHorizontal ?? 16.0,
          vertical: widget.paddingVertical ?? 8.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
          side: widget.borderColor != null
              ? BorderSide(
                  color: _resolveColor(widget.borderColor)!,
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
