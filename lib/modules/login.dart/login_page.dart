import 'dart:async';

import 'package:flutter/material.dart';
import 'package:payflow/modules/login.dart/login_controller.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.40,
              color: AppColors.primary,
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 673,
                height: 375,
              ),
            ),
            Positioned(
              bottom: size.height * 0.08,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.logomini,
                    width: 80,
                    height: 68,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 70, right: 70),
                    child: Text('Organize seus boletos em um só lugar',
                        textAlign: TextAlign.center,
                        style: TextStyles.titleHome),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 40,
                      right: 40,
                    ),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSigIn(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
