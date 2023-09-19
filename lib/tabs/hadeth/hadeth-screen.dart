import 'package:flutter/material.dart';
import 'package:islami/Data/hadeth_data.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});

  static const String route = 'hadethScreen';

  @override
  Widget build(BuildContext context) {
    HadethData data = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bglight.png'),
              fit: BoxFit.cover)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('اسلامي'),
            automaticallyImplyLeading: true,
          ),
          body: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            margin: EdgeInsets.only(top: 30, bottom: 100, right: 20, left: 20),
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  data.hadethNumber,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: 240,
                  height: 1,
                  color: Theme.of(context).primaryColor,
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
                        style: TextStyle(height: 2, fontSize: 20),
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
