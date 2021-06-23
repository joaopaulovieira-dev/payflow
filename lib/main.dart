import 'package:flutter/material.dart';
import 'package:payflow/modules/login_page.dart/login_page.dart';

import 'package:payflow/shared/themes/appcolors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payflow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
