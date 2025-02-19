import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widget_common/app_logo_widget.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight*0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Log in to $appname'.text.fontFamily(bold).white.size(18).make(),
          ],
        ),
      ),
    ));
  }
}