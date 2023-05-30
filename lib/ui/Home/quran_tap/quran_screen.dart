import 'package:flutter/material.dart';
import 'package:islami/ui/Home/quran_tap/ayaat.dart';
class quran_screen extends StatelessWidget {
  List<String> ayaat=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Image(image: AssetImage('assets/qur2an_screen_logo.png')),
        Container(
          width: double.infinity,
          height: 3,
          color: Theme.of(context).primaryColor,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              ' عدد السورة',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontFamily: 'ElMessiri'),
            ),
            Container(height: 60,width: 3,color: Theme.of(context).primaryColor,),
            Text(
              'اسم السورة',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontFamily: 'ElMessiri'),
            ),
          ],

        ),
        Container(width: double.infinity,height: 3,color: Theme.of(context).primaryColor,),
        Expanded(
          child: ListView.builder(itemCount: ayaat.length,itemBuilder: (BuildContext,index){
            return Sura(index+1, ayaat[index]);
          },),
        )

      ],
    ));
  }
}
