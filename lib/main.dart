import 'package:bottom_nav_bar/pages/admin_cap.dart';
import 'package:bottom_nav_bar/pages/admin_dgs.dart';
import 'package:bottom_nav_bar/pages/admin_intibak.dart';
import 'package:bottom_nav_bar/pages/admin_yatay_gecis.dart';
import 'package:bottom_nav_bar/pages/admin_yaz_okulu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Admin Paneli Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  //FirebaseFirestore firestore = FirebaseFirestore.instance;

  final screens = [
    /*HomePage(),
    FavoritePage(),
    ProfilePage(),*/
    YazOkulu(),
    YatayGecis(),
    Dgs(),
    Cap(),
    Intibak(),
    /*Center(child: Text('Home', style: TextStyle(fontSize: 60))),
    Center(child: Text('Favorites', style: TextStyle(fontSize: 60))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 60))),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: //screens[currentIndex],
      IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white70,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => (currentIndex = index)),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_sunny),
              label: 'Yaz Okulu',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'Yatay Geçiş',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_upward_sharp),
              label: 'DGS',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              label: 'ÇAP',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream_sharp),
              label: 'İntibak',
              backgroundColor: Colors.green)
        ],
      ),
    );
  }
}
