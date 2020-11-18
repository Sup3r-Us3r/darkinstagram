import 'package:flutter/material.dart';

class Story {
  final ImageProvider img;
  final bool newPost;

  Story({this.img, this.newPost});
}

List<Story> storys = [
  Story(
    img: AssetImage('assets/images/face.jpg'),
    newPost: false,
  ),
  Story(
    img: AssetImage('assets/images/face1.jpg'),
    newPost: false,
  ),
  Story(
    img: AssetImage('assets/images/face2.jpg'),
    newPost: true,
  ),
  Story(
    img: AssetImage('assets/images/face3.jpg'),
    newPost: true,
  ),
  Story(
    img: AssetImage('assets/images/face4.jpg'),
    newPost: false,
  ),
  Story(
    img: AssetImage('assets/images/face5.jpg'),
    newPost: true,
  ),
  Story(
    img: AssetImage('assets/images/face6.jpg'),
    newPost: false,
  ),
];
