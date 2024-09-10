import 'package:flutter/material.dart';

import '../Common_Widget/common_appbar.dart';
import '../Common_Widget/common_text.dart';
import '../Common_Widget/search_bar.dart';
import '../Search_Page/Widget/card_category.dart';
import 'Widget/home_card_category.dart';
import 'Widget/home_page_view.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              SizedBox(height: 5,),
              CommonAppbar(),
              SizedBox(height: 20,),
              CustomSearchBar(),
              SizedBox(height: 20,),
              HomePageView(),
              SizedBox(height: 15,),
              CommonText(text: 'Category',fontSize: 30,),
              SizedBox(height: 20,),
              HomeCardCategory(),
            ],),
          ),
        ),
      ),
    );
  }
}
