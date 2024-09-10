import 'package:flutter/material.dart';
import 'package:medico_app_ui/view/Doctor_List/doctor_list_page.dart';

import 'package:medico_app_ui/view/bottom_nav_page.dart';




void main() {
  runApp(const MedicoAppUi());
}
class MedicoAppUi extends StatelessWidget {
  const MedicoAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorListPage (),
    );
  }
}
