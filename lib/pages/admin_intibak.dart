import 'package:flutter/material.dart';

import 'basvuru_screens/admin_gelen_basvuru.dart';
import 'basvuru_screens/admin_kabul_edilen_basvuru.dart';
import 'basvuru_screens/admin_red_edilen_basvuru.dart';

class Intibak extends StatefulWidget {
  @override
  State<Intibak> createState() => _IntibakPageState();
}

class _IntibakPageState extends State<Intibak> {

  List<String> modelList = ["Bir dosya" , "İki dosya", "Üç dosya", "Dört dosya", "Beş dosya", "Altı dosya",
    "Yedi dosya", "Sekiz dosya", "Dokuz dosya"];
  List<String> modelListKabul = ["Bir dosya" , "İki dosya", "Üç dosya", "Dört dosya", "Beş dosya", "Altı dosya"];
  List<String> modelListRed = ["Bir dosya" , "İki dosya", "Üç dosya", "Dört dosya", "Beş dosya", "Altı dosya"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                backgroundColor: Colors.green,
                bottom: TabBar(
                  indicatorColor: Colors.green,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.swap_vertical_circle_outlined),
                      text: 'Gelen',
                    ),
                    Tab(
                      icon: Icon(Icons.check_circle_rounded),
                      text: 'Kabul Edilen',
                    ),
                    Tab(
                      icon: Icon(Icons.cancel),
                      text: 'Red Edilen',
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                GelenBasvuru(modelList: modelList),
                KabulEdilen(modelList: modelListKabul),
                RedEdilen(modelList: modelListRed),
              ],
            ),
          )),
    );
  }
}
