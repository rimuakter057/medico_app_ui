import 'package:flutter/material.dart';

import '../Common_Widget/common_button.dart';

class LanguageSelectPage extends StatelessWidget {
  const LanguageSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/language.png',
                height: MediaQuery.sizeOf(context).height * .43,
                width: MediaQuery.sizeOf(context).width * .82,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height*.07,
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "বাংলা",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300,color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              CommonButton(
                text: "English",
                fontSize: 25,
                fontWeight: FontWeight.w300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
