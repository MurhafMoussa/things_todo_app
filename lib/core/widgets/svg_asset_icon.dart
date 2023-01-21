import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:things_todo/core/resources/color_manager.dart';

class SvgAssetIcon extends StatelessWidget {
  const SvgAssetIcon(
      {super.key, required this.path, this.color = ColorManager.white});
  final String path;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color:color,
    );
  }
}
