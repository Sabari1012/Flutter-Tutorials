import 'package:CWCFlutter/controllers/menu_controller.dart';
import 'package:CWCFlutter/controllers/restaurant_controller.dart';
import 'package:CWCFlutter/screens/add_followers.dart';
import 'package:CWCFlutter/screens/add_reviews.dart';
import 'package:CWCFlutter/screens/edit_follower_count.dart';
import 'package:CWCFlutter/screens/edit_name.dart';
import 'package:CWCFlutter/screens/home/home.dart';
import 'package:CWCFlutter/screens/toggle_status.dart';
import 'package:CWCFlutter/screens/update_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

void main() {
  Get.put(RestaurantController());
  Get.put(MenuController());
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
      routes: {
        'home': (context) => Home(),
        'edit_name': (context) => EditName(),
        'add_followers': (context) => AddFollowers(),
        'toggle_status': (context) => ToggleStatus(),
        'edit_follower_count': (context) => EditFollowerCount(),
        'add_reviews': (context) => AddReviews(),
        'update_menu': (context) => UpdateMenu(),
      },
    );
  }
}
