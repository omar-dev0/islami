import 'package:flutter/material.dart';
import 'package:islami/Data/Swra_Data.dart';
import 'package:islami/tabs/quran/swra.dart';
import 'package:islami/tabs/quran/swra_screen.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> swar = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    List<int> ayatNumbers = [
      7,
      286,
      200,
      176,
      120,
      165,
      206,
      75,
      129,
      109,
      123,
      111,
      43,
      52,
      99,
      128,
      111,
      110,
      98,
      135,
      112,
      78,
      118,
      64,
      77,
      227,
      93,
      88,
      69,
      60,
      34,
      30,
      73,
      54,
      45,
      83,
      182,
      88,
      75,
      85,
      54,
      53,
      89,
      59,
      37,
      35,
      38,
      29,
      18,
      45,
      60,
      49,
      62,
      55,
      78,
      96,
      29,
      22,
      24,
      13,
      14,
      11,
      11,
      18,
      12,
      12,
      30,
      52,
      52,
      44,
      28,
      28,
      20,
      56,
      40,
      31,
      50,
      40,
      46,
      42,
      29,
      19,
      36,
      25,
      22,
      17,
      19,
      26,
      30,
      20,
      15,
      21,
      11,
      8,
      8,
      19,
      5,
      8,
      8,
      11,
      11,
      8,
      3,
      9,
      5,
      4,
      7,
      3,
      6,
      3,
      5,
      4,
      5,
      6,
    ];
    String numberToArabicString(int number) {
      final List<String> digits = [
        '٠',
        '١',
        '٢',
        '٣',
        '٤',
        '٥',
        '٦',
        '٧',
        '٨',
        '٩'
      ];
      String numberString = number.toString();
      String result = '';

      for (int i = 0; i < numberString.length; i++) {
        int digit = int.parse(numberString[i]);
        result += digits[digit];
      }

      return result;
    }

    List<String> arabicNumbers =
        ayatNumbers.map((number) => numberToArabicString(number)).toList();

    return Column(
      children: [
        Expanded(flex: 2, child: Image.asset('assets/images/quran_image.png')),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 2,
                color: Theme.of(context).primaryColor,
              ), // seprated
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "اسم السورة",
                      style: TextStyle(
                          fontFamily: 'ElMessiri-SemiBold',
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    Expanded(
                        child: SizedBox(
                      width: double.infinity,
                    )),
                    Container(
                      width: 2,
                      height: 40,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                        child: SizedBox(
                      width: double.infinity,
                    )),
                    Text(
                      "عدد الآيات",
                      style: TextStyle(
                          fontFamily: 'ElMessiri-SemiBold',
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ), //swraName
              Container(
                width: double.infinity,
                height: 2,
                color: Theme.of(context).primaryColor,
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SwraScreen.route,
                          arguments: SwraData(name: swar[index], index: index));
                    },
                    child: Swra(
                      swraName: swar[index],
                      ayatNumber: arabicNumbers[index],
                    )),
                itemCount: swar.length,
              ))
            ],
          ),
        )
      ],
    );
  }
}
