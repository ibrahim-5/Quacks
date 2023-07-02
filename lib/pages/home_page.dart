import 'package:flutter/material.dart';
import 'package:quacks/constants/colors.dart';
import 'package:quacks/widgets/user_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: QuacksColors.FINAL_BACKGROUND_COLOR,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Your Home Page",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.post_add),
            onPressed: () => Navigator.pushNamed(context, ''),
          ),
          body: PostList(),
        ));
  }
}

class PostList extends StatelessWidget {
  const PostList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return UserPost(name: "name");
        });
  }
}
