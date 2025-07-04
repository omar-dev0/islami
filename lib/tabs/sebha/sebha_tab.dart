import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  double turn = 0.0;
  int count = 0;
  List<String> azkhar = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر',
    'اللهم صلِ على سيدنا محمد و على آله و صحبه أجمعين',
  ];
  int zekhrNumber = 0;
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 2,
              child: AnimatedRotation(
                turns: turn,
                duration: Duration(milliseconds: 700),
                child: Image.asset(settingsProvider.sebhaPath),
              )),
          SizedBox(
            height: 30,
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'عدد التسبيحات',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'ELMESSIRI-SEMIBOLD'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      count.toString(),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                          Theme.of(context).colorScheme.background),
                      onPressed: () {
                        setState(() {
                          turn += 0.06;
                          if (count == 30) {
                            count = 0;
                            if (zekhrNumber == azkhar.length - 1) {
                              zekhrNumber = 0;
                            } else {
                              zekhrNumber++;
                            }
                          } else {
                            count++;
                          }
                        });
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          azkhar[zekhrNumber],
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondary),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
