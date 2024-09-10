import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico_app_ui/view/Common_Widget/common_text.dart';

class CommonAppbar extends StatelessWidget {
  const CommonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.06,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Expanded(
          child: Image.asset("assets/images/splash.png",height:MediaQuery.sizeOf(context).height*.05,
            width: MediaQuery.sizeOf(context).width*15,
          ),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.black,size: 30,))
      ],),
    );
  }
}
