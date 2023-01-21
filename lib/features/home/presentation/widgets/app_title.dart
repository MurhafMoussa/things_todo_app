import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/font_manager.dart';
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
          TextSpan(text: AppLocalizations.of(context).things, children: [
            TextSpan(
              text: AppLocalizations.of(context).tod,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeightManager.bold),
            ),
          ]),
        ),
        SvgPicture.asset(
          AssetsManager.targetIcon,
          height: ResponsiveValue(
            context,
            defaultValue: 30,
            valueWhen: const [
              Condition.smallerThan(
                name: MOBILE,
                value: 30.0,
              ),
            ],
          ).value!.toDouble(),
        ),
      ],
    );
  }
}
