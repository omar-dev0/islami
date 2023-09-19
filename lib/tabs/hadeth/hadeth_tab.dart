import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Data/hadeth_data.dart';
import 'package:islami/tabs/hadeth/hadeth-screen.dart';

class Hadeth extends StatefulWidget {
  Hadeth({super.key});

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<String> hadethList = [];
  List<String> hadeth = [];
  List<String> titles = [];

  @override
  Widget build(BuildContext context) {
    if (titles.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Expanded(
            flex: 2, child: Image.asset('assets/images/hadeth_logo@3x.png')),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.symmetric(
                  horizontal: BorderSide(
                      width: 3, color: Theme.of(context).primaryColor),
                )),
                child: const Text(
                  'الأحاديث',
                  style: TextStyle(
                    fontFamily: 'ElMessiri-SemiBold',
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              titles.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, HadethScreen.route,
                                arguments: HadethData(
                                    hadethNumber: titles[index],
                                    hadeth: hadeth[index]));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              'الحديث رقم ${index + 1}',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                        itemCount: titles.length,
                      ),
                    )
            ],
          ),
        )
      ],
    );
  }

  void loadHadeth() async {
    String file = await rootBundle.loadString('assets/ahadeth.txt');
    hadethList = file.trim().split('#');
    for (var item in hadethList) {
      titles.add((item.trim().split('\n'))[0]);
      hadeth.add(item.trim().split('\n')[1]);
    }
    setState(() {});
  }
}
