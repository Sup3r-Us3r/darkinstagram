import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  Widget lineDivider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: 1.0,
      height: 40.0,
      color: Colors.white30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/fifth.jpg'),
            radius: 50.0,
          ),
          SizedBox(height: 10.0),
          Text(
            'Username',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              letterSpacing: 1.3,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              '☀ Holidays all the time 🌴🍸',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '149',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Posts',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              lineDivider(),
              Column(
                children: [
                  Text(
                    '12.447',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Followes',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              lineDivider(),
              Column(
                children: [
                  Text(
                    '2.307',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50.0,
                width: 150.0,
                margin: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFFf9A249),
                      Color(0xFFE43C69),
                    ],
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: RaisedButton(
                    onPressed: () {},
                    visualDensity: VisualDensity.comfortable,
                    color: Colors.transparent,
                    highlightColor: Colors.transparent,
                    elevation: 0.0,
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Container(
                height: 50.0,
                width: 70.0,
                margin: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: RaisedButton(
                    onPressed: () {},
                    visualDensity: VisualDensity.comfortable,
                    color: Colors.transparent,
                    highlightColor: Colors.transparent,
                    elevation: 0.0,
                    child: Icon(Icons.send, color: Colors.white, size: 30.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
