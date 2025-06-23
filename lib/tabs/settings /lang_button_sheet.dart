import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LangButtonSheet extends StatefulWidget {
  const LangButtonSheet({super.key});

  @override
  State<LangButtonSheet> createState() => _LangButtonSheetState();
}

class _LangButtonSheetState extends State<LangButtonSheet> {
  late SettingsProvider provider = Provider.of(context, listen: false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          provider.currentLang == 'ar'
              ? selectedWidget(AppLocalizations.of(context)!.arabic, context)
              : selectedWidget(AppLocalizations.of(context)!.english, context),
          const SizedBox(
            height: 10,
          ),
          provider.currentLang == 'ar'
              ? unSelectededWidget(
                  AppLocalizations.of(context)!.english, context)
              : unSelectededWidget(
                  AppLocalizations.of(context)!.arabic, context),
        ],
      ),
    );
  }

  Widget selectedWidget(String text, BuildContext context) {
    return InkWell(
      onTap: () {
        if (text == AppLocalizations.of(context)!.arabic) {
          provider.changeLang('ar');
        } else {
          provider.changeLang('en');
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
        if (text == AppLocalizations.of(context)!.arabic) {
          provider.changeLang('ar');
        } else {
          provider.changeLang('en');
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
