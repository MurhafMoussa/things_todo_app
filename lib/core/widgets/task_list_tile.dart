import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:things_todo/core/resources/assets_manager.dart';
import 'package:things_todo/core/resources/color_manager.dart';
import 'package:things_todo/core/widgets/svg_asset_icon.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile(
      {super.key,
      required this.title,
      required this.category,
      required this.isImportant,
      required this.priority,
      required this.time,
      required this.isAm});
  final String title;
  final String category;
  final bool isImportant;
  final Color priority;
  final String time;
  final bool isAm;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(category),
        leading: SizedBox(
          child: Column(
            children: [
              Text(time),
              Text(
                isAm ? "AM" : "PM",
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              SvgAssetIcon(
                path: AssetsManager.starIcon,
                color:
                    isImportant ? ColorManager.yellow : ColorManager.darkBlue,
              ),
              Icon(
                Icons.circle,
                color: priority,
              )
            ],
          ),
        ),
      ),
    );
  }
}
