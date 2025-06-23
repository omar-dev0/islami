import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemButtonSheet extends StatelessWidget {
  const ThemButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          settingsProvider.currentTheme == ThemeMode.dark
              ? selectedWidget(AppLocalizations.of(context)!.dark, context)
              : selectedWidget(AppLocalizations.of(context)!.light, context),
          const SizedBox(
            height: 10,
          ),
          settingsProvider.currentTheme == ThemeMode.dark
              ? unSelectededWidget(AppLocalizations.of(context)!.light, context)
              : unSelectededWidget(AppLocalizations.of(context)!.dark, context),
        ],
      ),
    );
  }

  Widget selectedWidget(String text, BuildContext context) {
    return InkWell(
      onTap: () {
        var settingProvider =
            Provider.of<SettingsProvider>(context, listen: false);
        if (text == AppLocalizations.of(context)?.light) {
          settingProvider.changeTheme(ThemeMode.light);
        } else {
          settingProvider.changeTheme(ThemeMode.dark);
        }
      },
      child: Row(
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
      ),
    );
  }

  Widget unSelectededWidget(String text, BuildContext context) {
    return InkWell(
      onTap: () {
        var settingProvider =
            Provider.of<SettingsProvider>(context, listen: false);
        if (text == AppLocalizations.of(context)?.light) {
          settingProvider.changeTheme(ThemeMode.light);
        } else {
          settingProvider.changeTheme(ThemeMode.dark);
        }
      },
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
