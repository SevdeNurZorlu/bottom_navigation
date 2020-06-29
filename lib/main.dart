import 'package:bottom_navigation/drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BottomNavigation',
      theme: ThemeData(
        primarySwatch: Colors.purple,

      ),
      home: MyApp1(),
    );
  }
}

class MyApp1 extends StatefulWidget {
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {

  int secilenMenuItem=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: Text("Bottom Navigation Kullanımı"),

      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon:Icon(Icons.home),title: Text("Anasayfa")),
        BottomNavigationBarItem(icon:Icon(Icons.search),title: Text("Ara")),
        BottomNavigationBarItem(icon:Icon(Icons.add),title: Text("Ekle")),
        BottomNavigationBarItem(icon:Icon(Icons.account_circle),title: Text("Profil")),

      ],
        type: BottomNavigationBarType.fixed,
        //4 tane sığdırmak için
        currentIndex: secilenMenuItem,
        onTap: (index){
        setState(() {
          secilenMenuItem=index;

        });
        },
      ),
    );
  }
}
