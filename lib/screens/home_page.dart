import 'package:flutter/material.dart';
import '../constants/images.dart';
import 'package:dark_instagram/models/post_model.dart';
import 'package:dark_instagram/widgets/user_post.dart';
import 'package:dark_instagram/widgets/story_slide.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dark_instagram/route.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Image.asset(
              kLogo,
              height: 40.0,
            ),
            centerTitle: true,
            leading: Image.asset(
              kCamera,
              height: 40.0,
            ),
            actions: [
              Row(
                children: [
                  Image.asset(
                    kLive,
                    height: 40.0,
                  ),
                  Image.asset(
                    kDm,
                    height: 40.0,
                  ),
                ],
              ),
            ],
            floating: true,
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 130.0,
              color: Theme.of(context).primaryColor,
              child: StorySlider(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];

                return UserPost(post: post);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        onTap: (position) {
          setState(() {
            _currentIndex = position;
            changeRoute(position, context);
          });
        },
        items: [
          Icon(
            Icons.home,
            size: 30.0,
            color: Theme.of(context).backgroundColor,
          ),
          Icon(
            Icons.search,
            size: 30.0,
            color: Theme.of(context).backgroundColor,
          ),
          Icon(
            Icons.add,
            size: 30.0,
            color: Theme.of(context).backgroundColor,
          ),
          Icon(
            Icons.settings,
            size: 30.0,
            color: Theme.of(context).backgroundColor,
          ),
          Icon(
            Icons.person_outline,
            size: 30.0,
            color: Theme.of(context).backgroundColor,
          ),
        ],
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        buttonBackgroundColor: Colors.white,
        height: 60.0,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(
          milliseconds: 200,
        ),
      ),
    );
  }
}
