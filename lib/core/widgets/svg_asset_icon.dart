import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:things_todo/core/resources/color_manager.dart';

class SvgAssetIcon extends StatelessWidget {
  const SvgAssetIcon(
      {super.key,
      required this.path,
      this.color = ColorManager.white,
      this.scaleFactor = 1});
  final String path;
  final Color color;
  final double scaleFactor;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scaleFactor,
      child: SvgPicture.asset(
        path,
        color: color,
      ),
    );
  }
}
