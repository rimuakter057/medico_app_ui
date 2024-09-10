import 'package:flutter/material.dart';

import '../../model/doctor_list_model.dart';
import '../Common_Widget/common_appbar.dart';
import '../Common_Widget/common_text.dart';
import '../Common_Widget/custom_search_bar.dart';

class DoctorListPage extends StatelessWidget {
  const DoctorListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                CommonAppbar(),
                const SizedBox(
                  height: 15,
                ),
                CustomSearchBar(),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: SizedBox(
                 //   width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: doctorListModel.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * .3,
                            //  width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                      doctorListModel[index].image,
                                      height:
                                          MediaQuery.sizeOf(context).height * .08,
                                      width:
                                          MediaQuery.sizeOf(context).width * 10,
                                      fit: BoxFit.cover,
                                    )),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          text: doctorListModel[index].name,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                        Container(height: 50,
                                        width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.blue
                                          ),
                                          child: Center(child: CommonText(text: 'Neurologist',color: Colors.white,fontWeight: FontWeight.bold,)),
                                        ),
                                        CommonText(
                                          text: doctorListModel[index].category,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                        ),
                                        CommonText(
                                          text: doctorListModel[index].degree,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                        ),

                                        Row(
                                          children: [
                                            CommonText(
                                              text: "Working:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            CommonText(
                                              text:
                                              doctorListModel[index].working,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            CommonText(
                                              text: "BMDC Number:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            CommonText(
                                              text:
                                              doctorListModel[index].number,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),


                                          ],
                                        ),
                                        Row(
                                          children: [
                                            CommonText(
                                              text: "Experience:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            CommonText(
                                              text:
                                                  doctorListModel[index].experience,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
