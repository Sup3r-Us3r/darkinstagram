import 'package:flutter/material.dart';
import 'dart:math';

class Post {
  final ImageProvider img;
  final String name;
  final ImageProvider avatar;
  final int likes;
  final int comments;

  Post({this.img, this.name, this.avatar, this.likes, this.comments});
}

Random random = Random();

List<Post> posts = [
  Post(
    img: AssetImage('assets/images/third.jpg'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/face.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/second.jpg'),
    name: 'Peter_Range',
    avatar: AssetImage('assets/images/face5.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/first.jpg'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/face.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/fourth.jpg'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/face.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/fifth.jpg'),
    name: 'Peter_Range',
    avatar: AssetImage('assets/images/face5.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/sixth.jpg'),
    name: 'SmartFox',
    avatar: AssetImage('assets/images/face4.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/third.jpg'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/face.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/second.jpg'),
    name: 'Peter_Range',
    avatar: AssetImage('assets/images/face5.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/first.jpg'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/face.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/fourth.jpg'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/face.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/fifth.jpg'),
    name: 'Peter_Range',
    avatar: AssetImage('assets/images/face5.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
  Post(
    img: AssetImage('assets/images/sixth.jpg'),
    name: 'SmartFox',
    avatar: AssetImage('assets/images/face4.jpg'),
    likes: random.nextInt(100),
    comments: random.nextInt(100),
  ),
];
