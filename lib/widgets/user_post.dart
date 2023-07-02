import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  String name;
  UserPost({super.key, required this.name});

  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
                offset: Offset(4, 8), // Shadow position
              )
            ]),
        child: null,
      ),
    );
  }
}
