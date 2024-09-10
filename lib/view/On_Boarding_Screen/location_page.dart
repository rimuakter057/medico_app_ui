import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medico_app_ui/view/Common_Widget/common_button.dart';
import 'package:medico_app_ui/view/Common_Widget/common_text.dart';

import 'Widget/place_location.dart';
import 'Widget/rich_text.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.blue.shade700,
              size: 80,
            ),
            SizedBox(
              height: 20,
            ),
            RichTextWidget(),
            SizedBox(
              height: 30,
            ),
            PlaceLocation(),
            SizedBox(
              height: 20,
            ),
            CommonButton(
              text: "While using the app",
              backgroundColor: Colors.lightBlueAccent.shade100,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            CommonButton(
              text: "Only this time",
              backgroundColor: Colors.lightBlueAccent.shade100,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            CommonButton(
              text: "Don't allow",
              backgroundColor: Colors.lightBlueAccent.shade100,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
