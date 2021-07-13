import 'package:flutter/material.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
              child: Image.asset(
            AppImages.union,
            width: 260,
            height: 474,
          )),
          Center(
              child: Image.asset(
            AppImages.logoFull,
            width: 170,
            height: 155,
          )),
          // Align(
          //   alignment: Alignment(0.0, 0.35),
          //   child: CircularProgressIndicator(
          //     color: AppColors.primary,
          //   ),
          // ),
        ],
      ),
    );
  }
}
