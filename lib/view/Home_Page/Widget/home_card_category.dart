import 'package:flutter/material.dart';

import '../../../model/home_category.dart';
import '../../Common_Widget/common_text.dart';

class HomeCardCategory extends StatelessWidget {
  const HomeCardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shadowColor: Colors.blue,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .45,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(itemCount: homeCategoryList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.78
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Column(children: [
                  Image.asset(homeCategoryList[index].image),
                  CommonText(text:homeCategoryList[index].name,fontSize: 12,),
                ],);

              }),
        ),
      ),
    );
  }
}
