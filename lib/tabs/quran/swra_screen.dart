import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Data/Swra_Data.dart';

class SwraScreen extends StatefulWidget {
  static const route = "swraScreen";

  const SwraScreen({super.key});

  @override
  State<SwraScreen> createState() => _SwraScreenState();
}

class _SwraScreenState extends State<SwraScreen> {
  String swra = '';

  @override
  Widget build(BuildContext context) {
    SwraData args = ModalRoute.of(context)?.settings.arguments as SwraData;
    if (swra.isEmpty) {
      load(args.index);
    }
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bglight.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text('إسلامي'),
            automaticallyImplyLeading: false,
          ),
          body: swra.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  margin: EdgeInsets.only(
                      top: 30, bottom: 100, right: 20, left: 20),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.play_circle)),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            args.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
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
                              swra,
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

  void load(int index) async {
    swra = await rootBundle.loadString('assets/swar/${index + 1}.txt');
    List<String> content = swra.split('\n');
    swra = swra.trim();
    for (int i = 0; i < content.length; i++) {
      swra = swra.replaceFirst('\n', '{${i + 1}} ');
    }
    swra += ' {${content.length}} ';
    setState(() {});
  }
}
