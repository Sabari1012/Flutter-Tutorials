import 'package:CWCFlutter/controllers/menu_controller.dart';
import 'package:CWCFlutter/controllers/restaurant_controller.dart';
import 'package:CWCFlutter/screens/home/followers_card.dart';
import 'package:CWCFlutter/screens/home/general_card.dart';
import 'package:CWCFlutter/screens/home/menu_card.dart';
import 'package:CWCFlutter/screens/home/reviews_card.dart';
import 'package:CWCFlutter/widget/drawer/side_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final restoController = RestaurantController.to;
  final menuController = MenuController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("State Management")),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GeneralCard(restoController),
            FollowersCard(restoController),
            ReviewsCard(restoController),
            MenuCard(menuController),
          ],
        ),
      ),
    );
  }
}
