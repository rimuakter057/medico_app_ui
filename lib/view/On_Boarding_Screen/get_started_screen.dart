import 'package:flutter/material.dart';
import 'package:medico_app_ui/view/Common_Widget/common_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 150,),
              Image.asset(
                'assets/images/get_started.png',
                height: MediaQuery.sizeOf(context).height * .45,
                width: MediaQuery.sizeOf(context).width * .80,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 130,),
              CommonButton(text: "GET STARTED")
            ],
          ),
        ),
      ),
    );
  }
}
