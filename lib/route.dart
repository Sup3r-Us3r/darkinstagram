import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/profile.dart';

void changeRoute(int currentIndexTab, BuildContext context) {
  var page;

  switch (currentIndexTab) {
    case 0:
      page = HomePage();
      break;
    case 1:
      page = HomePage();
      break;
    case 2:
      page = HomePage();
      break;
    case 3:
      page = HomePage();
      break;
    case 4:
      page = Profile();
      break;
    default:
      page = HomePage();
  }

  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => page),
  );
}
