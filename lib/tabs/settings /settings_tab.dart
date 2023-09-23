import 'package:flutter/material.dart';
import 'package:islami/tabs/settings%20/lang_button_sheet.dart';
import 'package:islami/tabs/settings%20/them_button_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المظهر',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          InkWell(
            onTap: () {
              showThemeButtomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(13),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.background,
                      width: 3),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'فاتح',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'اللغة',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          InkWell(
            onTap: () {
              showLangButtomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(13),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.background,
                      width: 3),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'العربية',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const ThemButtonSheet());
  }

  void showLangButtomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const LangButtonSheet());
  }
}
