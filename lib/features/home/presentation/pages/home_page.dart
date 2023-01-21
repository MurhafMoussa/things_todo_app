import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:things_todo/core/resources/assets_manager.dart';
import 'package:things_todo/core/resources/color_manager.dart';
import 'package:things_todo/core/widgets/svg_asset_icon.dart';
import 'package:things_todo/core/widgets/task_list_tile.dart';

import '../widgets/app_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const AppTitle(),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const SvgAssetIcon(path: AssetsManager.alarmIcon),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgAssetIcon(path: AssetsManager.addIcon),
              ),
            ],
            floating: true,
            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: Placeholder(),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 3,
              (context, index) => TaskListTile(
                  title: "title",
                  category: "category",
                  isImportant: false,
                  priority: ColorManager.blueAccent,
                  time: "10:00",
                  isAm: true),
            ),
          ),
        ],
      ),
    );
  }
}
