import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String? hintText;
  const CustomSearchBar({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height*.07,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(children: [

          Flexible(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                    hintText:hintText?? "Search hospital for doctor",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w300),
                    border: InputBorder.none
                ),
              )),
          Container(height: 20,width: size.width*.05,color: Colors.grey.shade200,),
          Expanded(child: Image.asset("assets/images/listApp.png")),
        ],),
      ),
    );
  }
}
