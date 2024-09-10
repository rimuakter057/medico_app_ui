import 'package:flutter/material.dart';
import 'package:medico_app_ui/view/Common_Widget/common_text.dart';

import '../../model/hospital_list_model.dart';
import '../Common_Widget/common_appbar.dart';
import '../Common_Widget/custom_search_bar.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 5,),
                CommonAppbar(),
                SizedBox(height: 15,),
                CustomSearchBar(),
                SizedBox(height: 25,),
                Expanded(
                  child: ListView.builder(
                     scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: hospitalListModel.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height * .13,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Image.asset(hospitalListModel[index].image,
                                        height: MediaQuery.sizeOf(context).height * .08,
                                        width: MediaQuery.sizeOf(context).width*10,fit: BoxFit.cover,


                                  )),
                                  Spacer(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommonText(text: hospitalListModel[index].name,fontWeight: FontWeight.bold,fontSize: 16,),
                                      Row(
                                        children: [
                                          CommonText(text: "Category:",fontWeight: FontWeight.bold,fontSize: 16,),
                                          CommonText(text:hospitalListModel[index].category,fontSize: 16,
                                          fontWeight: FontWeight.w300,),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                         Icon(Icons.location_on,size: 25,color: Colors.black,),
                                          CommonText(text: hospitalListModel[index].location,fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          ),
                                          SizedBox(width: 5,),
                                          Row(
                                            children: [
                                              CommonText(text: "Code:",fontWeight: FontWeight.bold,fontSize: 16,),
                                              CommonText(text: hospitalListModel[index].code,fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
