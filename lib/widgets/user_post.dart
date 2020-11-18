import 'package:flutter/material.dart';
import 'package:dark_instagram/models/post_model.dart';

class UserPost extends StatefulWidget {
  final Post post;

  UserPost({this.post});

  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.0,
      margin: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 5),
            // spreadRadius: 5.0,
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: widget.post.avatar,
                      radius: 25.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      widget.post.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white30,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 290.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                  image: widget.post.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      widget.post.likes.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Icon(
                      Icons.notes,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      widget.post.comments.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                  size: 30.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
