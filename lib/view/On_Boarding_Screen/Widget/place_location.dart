import 'package:flutter/material.dart';

import '../../Common_Widget/common_text.dart';

class PlaceLocation extends StatelessWidget {
  const PlaceLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/images/PreciseImg.png' ,
              height: 120,
              width: 120,
              fit: BoxFit.fill,),
            CommonText(text: "Precise",fontSize: 18,fontWeight: FontWeight.w300,)
          ],
        ),
        Column(
          children: [
            Container(
              child: Image.asset( 'assets/images/ApproxImg.png',
                height: 120,
                width: 120,
                fit: BoxFit.fill,),
            ),
            CommonText(text: "Approximate",fontSize: 18,fontWeight: FontWeight.w300,)
          ],
        ),

      ],);
  }
}
