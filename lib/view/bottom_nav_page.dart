import 'package:flutter/material.dart';
import 'package:medico_app_ui/view/Search_Page/search_page.dart';


import 'Home_Page/HomePage.dart';
import 'On_Boarding_Screen/get_started_screen.dart';
import 'On_Boarding_Screen/location_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentIndex = 1;
  List screens =[
    GetStarted (),
    SearchPage(),
    HomePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          currentIndex =1;

          });
        },
        shape: const CircleBorder(),
        backgroundColor:  currentIndex == 1 ? Colors.blue : Colors.black,
        child:    IconButton(onPressed: (){}, icon:Image.asset('assets/images/vector_search.png',
          height: 20,
          width: 20,

          fit: BoxFit.fill,)),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shadowColor: Colors.blue,
          elevation: 3,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: MediaQuery.sizeOf(context).height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
          IconButton(onPressed: (){
            setState(() {
              currentIndex=0;
            });
          },
              icon:Image.asset('assets/images/category_icon.png',height: 30,
              width: 30,
            color: currentIndex == 0 ? Colors.blue : Colors.black,
            fit: BoxFit.fill,)),
          IconButton(onPressed: (){
            setState(() {
              currentIndex =2;
            });
          },
              icon:Icon(Icons.house_outlined,size: 35,
                color: currentIndex == 2 ? Colors.blue : Colors.black,
              )),
        ],)
      ),
      body: screens[currentIndex],
    );
  }
}
