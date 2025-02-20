import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widget_common/app_logo_widget.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:emart_app/widget_common/custom_textfield.dart';
import 'package:emart_app/widget_common/our_button.dart';
import 'package:get/route_manager.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Join the $appname'.text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextfield(title: name, hint: nameHint),
                customTextfield(title: email, hint: emailHint),
                customTextfield(title: password, hint: passwordHint),
                customTextfield(title: retypepass, hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make()),
                ),
                //5.heightBox,
                //ourButton().box.width(context.screenWidth - 50).make(),
                
                5.heightBox,
                Row(
                  children: [
                    Checkbox(checkColor: redColor, value: false, onChanged: (newValue){}),
                    10.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree to the ",style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )
                          ),
                          TextSpan(
                            text: termsNconditions,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            )
                          ),
                          TextSpan(
                            text: " & ",style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )
                          ),
                          TextSpan(
                            text: privacyPolicy,style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )
                          )
                        ]
                      )),
                    )
                  ],
                ),
                ourButton(
                  onpress: () {},
                  color: redColor,
                  textColor: whiteColor,
                  title: signUp,
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAnAcc,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )
                    ),
                    TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      )
                    )
                  ]
                )).onTap(() {
                  Get.back();
                }),

                //createNewAcc.text.color(fontGrey).make(),
                //5.heightBox,
                // ourButton(
                //   onpress: () {},
                //   color: const Color.fromARGB(255, 250, 238, 200),
                //   textColor: redColor,
                //   title: signUp,
                // ).box.width(context.screenWidth - 50).make(),
                // 10.heightBox,
                // logInWith.text.color(fontGrey).make(),
                // 5.heightBox,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: List.generate(
                //     3,
                //     (index) => Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: CircleAvatar(
                //         backgroundColor: lightGrey,
                //         radius: 25,
                //         child: Image.asset(socialIconList[index],width: 30,),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}