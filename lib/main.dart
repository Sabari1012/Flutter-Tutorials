import 'package:CWCFlutter/controllers/menu_controller.dart';
import 'package:CWCFlutter/controllers/restaurant_controller.dart';
import 'package:CWCFlutter/screens/add_followers.dart';
import 'package:CWCFlutter/screens/add_reviews.dart';
import 'package:CWCFlutter/screens/edit_follower_count.dart';
import 'package:CWCFlutter/screens/edit_name.dart';
import 'package:CWCFlutter/screens/home/home.dart';
import 'package:CWCFlutter/screens/navigation/navigation_hub.dart';
import 'package:CWCFlutter/screens/navigation/navigation_test.dart';
import 'package:CWCFlutter/screens/toggle_status.dart';
import 'package:CWCFlutter/screens/update_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  Get.put(RestaurantController());
  Get.put(MenuController());
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cheetah Coding',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
      routes: {
        //You can practice replacing all these with GetPages
        'home': (context) => Home(),
        'edit_name': (context) => EditName(),
        'add_followers': (context) => AddFollowers(),
        'toggle_status': (context) => ToggleStatus(),
        'edit_follower_count': (context) => EditFollowerCount(),
        'add_reviews': (context) => AddReviews(),
        'update_menu': (context) => UpdateMenu(),
      },
      routingCallback: (routing) {
        //This could be a good place for analytics
        //to track which screens users visit the most
        print(routing.current);
      },
      getPages: [
        GetPage(
          name: 'navigation_hub',
          page: () => NavigationHub(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: 'navigation_test',
          page: () => NavigationTest(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: 'navigation_test/:title',
          page: () => NavigationTest(),
          transition: Transition.downToUp,
        )
      ],
    );
  }
}
