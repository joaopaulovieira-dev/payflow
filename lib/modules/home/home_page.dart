import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(252),
      child: Container(
        height: 190,
        color: AppColors.primary,
        child: Center(
          child: ListTile(
            title: Text('Olá, João Paulo'),
            subtitle: Text('mantenha suas contas em dia.'),
            trailing: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
