import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}
class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
           appBar: AppBar(
              backgroundColor:Colors.white54 ,
             centerTitle: true,
             title: const Text('Bugün Ne Yesem',style:TextStyle(
                 color: Colors.black,
               ),
             ),
           ),
             body: NeYesem(),
            ),
    );
  }
}


class  NeYesem extends StatefulWidget {

  @override
  State<NeYesem> createState() => _NeYesemState();
}

class _NeYesemState extends State<NeYesem> {
  int CorbaNo=1;
  int ArayemekNo=1;
  int AnaYemekNo=1;
  int TatliNo=1;

  List<String> arayemekler=['Börek','Mantar Dolması','Humus'];
  List<String> corbalar=['Mercimek Çorbası','Tarhana Çorbası','Yoğurt Çorbası'];
  List<String> anayemekler=['Köfte Yemeği','Et Sote','Patlıcan Dolma','Fırında Tavuk '];
  List<String> tatlilar=['Trileçe','Tiremisu','Ekler'];

void yemekleriYenile(){
  setState(() {
    ArayemekNo=Random().nextInt(3)+1;
    CorbaNo=Random().nextInt(3)+1;
    AnaYemekNo=Random().nextInt(4)+1;
    TatliNo=Random().nextInt(3)+1;
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
         children: <Widget>[
           Expanded(child: Padding(
             padding: const EdgeInsets.all(8.0),

             child: FlatButton(
                highlightColor:Colors.white12,
                 onPressed: yemekleriYenile,

             child: Image.asset('assets/arasıcak$ArayemekNo.jpg')),
           )),
           Text(
             arayemekler[ArayemekNo-1],//değerler 0dan başlıyor yadizi mantığını sağlamak için
             style: TextStyle(fontSize:14 ),
           ),
           Container(
             width: 200,
             child: Divider(
               height: 10,
               color:Colors.black,
             ),
           ),
           Expanded(child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: FlatButton(
                 highlightColor:Colors.white12,
                 onPressed: yemekleriYenile,
             child: Image.asset('assets/çorba$CorbaNo.jpg')),
           ) ),
            Text(
             corbalar[CorbaNo-1],
             style: TextStyle(fontSize: 14),
           ),
           Container(
             width: 200,
             child: Divider(
               height: 10,
               color: Colors.black,
             ),
           ),
           Expanded(child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: FlatButton(
                 highlightColor:Colors.white12,
                 onPressed: yemekleriYenile,
             child: Image.asset('assets/anayemek$AnaYemekNo.jpg')),
           )),
           Text(
             anayemekler[AnaYemekNo-1],
             style: TextStyle(fontSize: 14),
           ),
           Container(
             width: 200,
             child: Divider(
               height: 10,
               color: Colors.black,
             ),
           ),
           Expanded(child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: FlatButton(
                 highlightColor:Colors.white12,
                 onPressed: yemekleriYenile,
             child: Image.asset('assets/tatlı$TatliNo.jpg')),
           )),
           Text(
             tatlilar[TatliNo-1],
             style: TextStyle(fontSize: 14),
           ),
           Container(
             width: 200,
             child: Divider(
               height: 10,
               color: Colors.black,
             ),
           ),
         ],
      ),
    );
  }
}
