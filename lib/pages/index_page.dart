// ignore_for_file: prefer_const_constructors
// essa aqui vai ser a nova index_page
import 'package:flutter/material.dart';
import 'package:splashproject/controllers/index_controller.dart';
import 'package:splashproject/models/post_model.dart';
import 'package:splashproject/pages/home_page.dart';
import 'package:splashproject/repositories/index_repository_imp.dart';
import 'package:splashproject/services/pref_services.dart';
import 'package:splashproject/widgets/custom_app_bar_widget.dart';

class IndexPage extends StatefulWidget {
  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>
    with SingleTickerProviderStateMixin {
  final IndexController _controller = IndexController(IndexRepositoryImp());
  // Tenho que fazer um controller pro tabview.
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    _controller.fetch();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      body: TabBarView(
        controller: tabController,
        children: [
          HomePage(),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],

        // children: [
        //   buildPage('Home Page'),
        //   buildPage('Feed Page'),
        //   buildPage('Profile Page'),
        //   buildPage('Settings Page'),
        // ],
      ),
      // AppBar(
      //   title: Center(child: Text('Home')),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         PrefServices.logout();
      //         Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
      //       },
      //       icon: Icon(
      //         Icons.logout,
      //       ),
      //     ),
      //   ],
      // ),
      // body: ValueListenableBuilder<List<PostModel>>(
      //     valueListenable: _controller.posts,
      //     builder: (_, list, __) {
      //       return ListView.separated(
      //         itemCount: list.length,
      //         itemBuilder: (_, idx) => ListTile(
      //           leading: Text(list[idx].id.toString()),
      //           trailing: Icon(Icons.toc_rounded),
      //           title: Text(list[idx].title),
      //           onTap: () => Navigator.of(context).pushNamed(
      //             '/details',
      //             arguments: list[idx],
      //           ),
      //         ),
      //         separatorBuilder: (_, __) => Divider(),
      //       );
      //     }),
    );
  }
}
