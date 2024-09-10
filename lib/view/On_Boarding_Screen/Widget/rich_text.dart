import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichText(text: TextSpan(
           style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),
            children: [
              TextSpan(text:"Allow ",),

              TextSpan(text:" Maps ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),

              TextSpan(text:"to access this",),
            ]
          )),
          RichText(text: TextSpan(
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),
              children: [
                TextSpan(text:"device's precise location ?",),
              ]

          )),
        ],
      ),
    );
       /* TextSpan(children:[
      TextSpan(text:"Allow",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400)),

      TextSpan(text:"Maps",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      TextSpan(text:"to access this",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400)),
    ] )*/

  }
}
