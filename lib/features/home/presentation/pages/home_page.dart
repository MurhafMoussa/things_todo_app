import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:things_todo/core/resources/assets_manager.dart';
import 'package:things_todo/core/resources/color_manager.dart';
import 'package:things_todo/core/widgets/svg_asset_icon.dart';
import 'package:things_todo/core/widgets/task_list_tile.dart';

import '../../../../core/resources/constants.dart';
import '../widgets/app_title.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabBarController = useTabController(
      initialLength: 3,
      initialIndex: 0,
    );
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: const AppTitle(),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const SvgAssetIcon(
                  path: AssetsManager.alarmIcon,
                  scaleFactor: 1.5,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgAssetIcon(
                  path: AssetsManager.addIcon,
                  scaleFactor: 1.5,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            floating: true,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  margin: appPadding,
                  child: AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
                controller: tabBarController,
                labelPadding: EdgeInsets.only(bottom: 5),
                tabs: [
                  Tab(
                    text: "DAILY",
                  ),
                  Tab(
                    text: "WEEKLY",
                  ),
                  Tab(
                    text: "MONTHLY",
                  ),
                ]),
            collapsedHeight: 140,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 100,
              (context, index) => TaskListTile(
                title: "title",
                category: "category",
                isImportant: false,
                priority: ColorManager.blueAccent,
                time: "10:00",
                onTap: () {},
                isAm: true,
                key: Key(
                  index.toString(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
