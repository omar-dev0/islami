import 'package:flutter/material.dart';
import 'package:islami/Data/hadeth_data.dart';
import 'package:islami/Thems/dark_them.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});

  static const String route = 'hadethScreen';

  @override
  Widget build(BuildContext context) {
    HadethData data = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(DarkThem.isDark
                  ? 'assets/images/dark.png'
                  : 'assets/images/bglight.png'),
              fit: BoxFit.cover)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('اسلامي'),
            automaticallyImplyLeading: true,
          ),
          body: Card(
            child: Column(
              children: [
                Text(
                    data.hadethNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: 240,
                  height: 1,
                  color: Theme.of(context).colorScheme.background,
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        data.hadeth,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            height: 2),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
