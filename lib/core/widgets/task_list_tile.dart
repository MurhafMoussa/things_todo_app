import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:things_todo/core/resources/color_manager.dart';
import 'package:things_todo/core/resources/font_manager.dart';
import 'package:things_todo/core/resources/text_style_manager.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile(
      {required super.key,
      required this.title,
      required this.onTap,
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
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: key!,
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: ColorManager.lightGreen,
            foregroundColor: ColorManager.white,
            icon: Icons.done,
            label: "Done",
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: ColorManager.pink,
            foregroundColor: ColorManager.white,
            icon: Icons.timer,
            label: 'Later',
          ),
        ],
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 1),
        child: ListTile(
          onTap: onTap,
          title: Text(title),
          subtitle: Text(category),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(time),
              Text(
                isAm ? "AM" : "PM",
                style: getSmallTitleTextStyle()
                    .copyWith(fontWeight: FontWeightManager.bold),
              ),
            ],
          ),
          trailing: FittedBox(
            child: Row(
              children: [
                Icon(
                  isImportant ? Icons.star : Icons.star_outline,
                  color: isImportant ? Colors.yellow : ColorManager.darkBlue,
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.circle,
                  color: priority,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
