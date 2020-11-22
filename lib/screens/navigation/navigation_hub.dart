import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';

class NavigationHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheetahButton(
              'Normal navigation',
              () => {},
            ),
            CheetahButton(
              'Named navigation',
              () => {},
            ),
            CheetahButton(
              'Navigation with params',
              () => {},
            ),
            CheetahButton(
              'Navigation with named params',
              () => {},
            ),
            CheetahButton(
              'Navigate, pop current stack',
              () => {},
            ),
            CheetahButton(
              'Navigate and pop until...',
              () => {},
            ),
            CheetahButton(
              'Remove current route',
              () => {},
            ),
            CheetahButton(
              'Handle returned data',
              () => {},
            ),
            CheetahButton(
              'Open Snackbar',
              () => {},
            ),
            CheetahButton(
              'Open Dialog',
              () => {},
            ),
            CheetahButton(
              'Open Bottom Sheet',
              () => {},
            ),
          ],
        ),
      ),
    );
  }
}
