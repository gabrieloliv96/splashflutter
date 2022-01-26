import 'package:flutter/material.dart';
import 'package:splashproject/services/pref_services.dart';

class CustomAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);

  @override
  State<CustomAppBarWidget> createState() => _CustomAppBarWidgetState();
  @override
  Size get preferredSize => const Size.fromHeight(110);
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  @override
  Widget build(BuildContext context) {

  return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Cabemce'),
            //centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                onPressed: () {
                  PrefServices.logout();
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/login', (_) => true);
                },
                icon: Icon(
                  Icons.logout,
                ),
              ),
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.blue.shade900),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Feed'),
                Tab(icon: Icon(Icons.face), text: 'Profile'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          // body: const TabBarView(
          //   children: [
          //     Center(
          //       child: Text("It's cloudy here"),
          //     ),
          //     Center(
          //       child: Text("It's rainy here"),
          //     ),
          //     Center(
          //       child: Text("It's sunny here"),
          //     ),
          //     Center(
          //       child: Text("It's sunny here"),
          //     ),
          //   ],

          //   // children: [
          //   //   buildPage('Home Page'),
          //   //   buildPage('Feed Page'),
          //   //   buildPage('Profile Page'),
          //   //   buildPage('Settings Page'),
          //   // ],
          // ),
        ),
      );

  } 
  // Widget buildPage(String text) => Center(
  //       child: Text(
  //         text,
  //         style: TextStyle(fontSize: 28),
  //       ),
  //     );
}
