import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/radio/radio.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings%20/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "homescreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/quran.png'),
        ),
        label: AppLocalizations.of(context)?.quran,
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/hadeth.png'),
        ),
        label: AppLocalizations.of(context)?.hadith,
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/sebha.png'),
        ),
          label: AppLocalizations.of(context)?.sebha),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/radio.png'),
        ),
        label: AppLocalizations.of(context)?.radio,
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: Icon(Icons.settings),
        label: AppLocalizations.of(context)?.settings,
      ),
    ];
    List<Widget> tabs = [
      Quran(),
      Hadeth(),
      TasbehTab(),
      RadioTab(),
      SettingsTab(),
    ];
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.bgPath), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islami,
          ),
        ),
        body: tabs[selected],
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: selected,
          onTap: (index) {
            selected = index;
            setState(() {});
          },
        ),
      ),
    );
  }
}
