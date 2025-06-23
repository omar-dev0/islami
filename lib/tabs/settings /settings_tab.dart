import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/tabs/settings%20/lang_button_sheet.dart';
import 'package:islami/tabs/settings%20/them_button_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
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
                settingsProvider.currentTheme == ThemeMode.dark
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.language,
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
                settingsProvider.currentLang == 'ar'
                    ? AppLocalizations.of(context)!.arabic
                    : AppLocalizations.of(context)!.english,
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
