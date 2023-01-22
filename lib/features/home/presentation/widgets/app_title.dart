import 'package:flutter/material.dart';
import 'package:things_todo/core/resources/font_manager.dart';
import 'package:things_todo/core/resources/text_style_manager.dart';
import 'package:things_todo/core/widgets/svg_asset_icon.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../generated/l10n.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
              text: AppLocalizations.of(context).things,
              style: getNormalTitleTextStyle().copyWith(
                fontWeight: FontWeightManager.regular,
              ),
              children: [
                TextSpan(
                  text: AppLocalizations.of(context).tod,
                  style: getNormalTitleTextStyle(),
                ),
              ]),
        ),
        const SvgAssetIcon(
          path: AssetsManager.targetIcon,
          scaleFactor: 0.75,
        )
      ],
    );
  }
}
