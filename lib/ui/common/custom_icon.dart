import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

enum IconType {
  png,
  svg,
  lottie,
}

class CustomIcon extends StatelessWidget {
  final String source;
  final double? width;
  final double? height;
  final Color? color;
  final Widget? errorWidget;

  const CustomIcon({
    super.key,
    required this.source,
    this.width,
    this.height,
    this.color,
    this.errorWidget,
  });

  IconType _getIconType() {
    final extension = source.toLowerCase().split('.').last;
    switch (extension) {
      case 'svg':
        return IconType.svg;
      case 'json':
        return IconType.lottie;
      default:
        return IconType.png;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildIcon();
  }

  Widget _buildIcon() {
    try {
      final iconType = _getIconType();
      
      switch (iconType) {
        case IconType.svg:
          return SvgPicture.asset(
            source,
            width: width,
            height: height,
            colorFilter: color != null 
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
            placeholderBuilder: (context) => _buildErrorWidget(),
          );
        case IconType.lottie:
          return Lottie.asset(
            source,
            width: width,
            height: height,
            errorBuilder: (context, error, stackTrace) => _buildErrorWidget(),
          );
        case IconType.png:
          return Image.asset(
            source,
            width: width,
            height: height,
            color: color,
            errorBuilder: (context, error, stackTrace) => _buildErrorWidget(),
          );
        }
    } catch (e) {
      return _buildErrorWidget();
    }
  }

  Widget _buildErrorWidget() {
    return errorWidget ?? Icon(
      Icons.error_outline,
      size: width ?? 24,
      color: color ?? Colors.grey,
    );
  }
} 