import 'package:flutter/material.dart';
import 'package:splashproject/controllers/home_controller.dart';
import 'package:splashproject/models/post_model.dart';
import 'package:splashproject/repositories/home_repository_imp.dart';
import 'package:splashproject/services/pref_services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
        actions: [
          IconButton(
            onPressed: () {
              PrefServices.logout();
              Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
            },
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                leading: Text(list[idx].id.toString()),
                trailing: Icon(Icons.toc_rounded),
                title: Text(list[idx].title),
                onTap: () => Navigator.of(context).pushNamed(
                  '/details',
                  arguments: list[idx],
                ),
              ),
              separatorBuilder: (_, __) => Divider(),
            );
          }),
    );
  }
}
