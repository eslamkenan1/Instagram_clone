// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/utils/colors.dart';
import 'package:ig_clone/widgets/comment_card.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text("comments"),
        centerTitle: true,
      ),
      body: const CommentCard(),
      bottomNavigationBar: SafeArea(
          child: Container(
        height: kToolbarHeight,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        padding: EdgeInsets.only(left: 16, right: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://nilecenter.org/wp-content/uploads/2023/04/placeholder-125.png",
              ),
              radius: 18,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "comment as a username",
                      border: InputBorder.none),
                ),
              ),
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: const Text(
                  "post",
                  style: TextStyle(color: blueColor),
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      )),
    );
  }
}
