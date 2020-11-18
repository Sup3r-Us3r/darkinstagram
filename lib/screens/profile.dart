import 'package:flutter/material.dart';
import 'package:dark_instagram/widgets/profile_info.dart';
import 'package:dark_instagram/models/post_model.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dark_instagram/route.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Username',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            leading: Icon(
              Icons.west,
              color: Colors.white,
              size: 30.0,
            ),
            floating: true,
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: ProfileInfo(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];

                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                      image: post.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              childCount: posts.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 0.0,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
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
