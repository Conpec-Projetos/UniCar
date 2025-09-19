import 'package:apps_flutter/telas/procurar.dart';
import 'package:apps_flutter/telas/oferecer.dart';
import 'package:apps_flutter/telas/viagens.dart';
import 'package:apps_flutter/telas/unicoins.dart';
import 'package:apps_flutter/telas/perfil.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;
  List<Widget> widgetList = [
    Procurar(),
    Oferecer(),
    Viagens(),
    UniCoins(),
    Perfil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetList[myIndex],),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 42,
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xff1A7CD2),
        unselectedItemColor: Colors.white,
        
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Procurar',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_eta),
            label: 'Oferecer',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Viagens',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'UniCoins',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
