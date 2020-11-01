import 'package:CWCFlutter/controllers/menu_controller.dart';
import 'package:CWCFlutter/model/menu.dart';
import 'package:CWCFlutter/widget/rounded_input.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class UpdateMenu extends StatelessWidget {
  final MenuController controller = MenuController.to;

  final nameInputController = TextEditingController();
  final colorInputController = TextEditingController();
  final locationInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("UpdateMenu screen building...");

    return Scaffold(
      appBar: AppBar(title: Text("Update Menu")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoundedInput(
              hintText: "Name",
              onSubmit: (value) => controller.setMenuName(value),
              editingController: nameInputController,
            ),
            SizedBox(height: 16),
            RoundedInput(
              hintText: "Color",
              onSubmit: (value) => controller.setMenuColor(value),
              editingController: colorInputController,
            ),
            SizedBox(height: 16),
            RoundedInput(
              hintText: "Location",
              onSubmit: (value) => controller.setMenuLocation(value),
              editingController: locationInputController,
            ),
            SizedBox(height: 16),
            FlatButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => controller.setMenu(
                Menu(
                  name: nameInputController.text,
                  color: colorInputController.text,
                  location: locationInputController.text,
                ),
              ),
              color: Colors.deepOrange,
            ),
            SizedBox(height: 16),
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    controller.menu.value.name,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    controller.menu.value.color,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    controller.menu.value.location,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
