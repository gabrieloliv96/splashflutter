import 'package:flutter/material.dart';

class CustomBottomBarComponent extends StatefulWidget {
  @override
  _CustomBottomBarComponentState createState() =>
      _CustomBottomBarComponentState();
}

class _CustomBottomBarComponentState extends State<CustomBottomBarComponent> {
  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue.shade900,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      // selectedFontSize: 15.0,
      // Esse index aqui n vai precisar.
      // currentIndex: _selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          label: 'Contato',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.downloading_sharp),
          label: 'Boletos',
        ),
      ],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
      if(index == 0 ){
        Navigator.of(context).pushNamed('/contact');
      }
    });
  }
}
