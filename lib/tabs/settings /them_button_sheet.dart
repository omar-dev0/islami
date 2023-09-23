import 'package:flutter/material.dart';

class ThemButtonSheet extends StatelessWidget {
  const ThemButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          selectedWidget('فاتح', context),
          const SizedBox(
            height: 10,
          ),
          unSelectededWidget('غامق', context),
        ],
      ),
    );
  }

  Widget selectedWidget(String text, BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
        Expanded(
            child: SizedBox(
          width: double.infinity,
        )),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.background,
        )
      ],
    );
  }

  Widget unSelectededWidget(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
    );
  }
}
