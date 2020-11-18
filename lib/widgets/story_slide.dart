import 'package:flutter/material.dart';
import 'package:dark_instagram/models/story_model.dart';

class StorySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: storys.length,
      itemBuilder: (context, index) {
        final Story story = storys[index];

        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 80.0,
              width: 80.0,
              margin: EdgeInsets.symmetric(horizontal: 13.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.orange.shade400.withOpacity(0.6),
                    Colors.pink,
                  ],
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
                child: CircleAvatar(
                  backgroundImage: story.img,
                  radius: 40.0,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
