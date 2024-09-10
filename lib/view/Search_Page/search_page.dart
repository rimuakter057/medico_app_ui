import 'package:flutter/material.dart';
import 'package:medico_app_ui/view/Common_Widget/common_text.dart';

import '../Common_Widget/search_bar.dart';
import 'Widget/card_category.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _HomePageState();
}

class _HomePageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             CommonText(text: '''Let's Fineout
Hospital & Doctor''',fontSize: 30,
               fontWeight: FontWeight.bold,),
             SizedBox(height: 15,),
             CustomSearchBar(),
             SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
             CommonText(text: 'Category',fontSize: 20,),

           ],),
               SizedBox(height: 25,),
               CardCategory(),
             ],),
         ),
       ),
      ),
    );
  }
}
