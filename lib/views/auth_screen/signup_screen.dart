import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widget_common/app_logo_widget.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:emart_app/widget_common/custom_textfield.dart';
import 'package:emart_app/widget_common/our_button.dart';
import 'package:get/route_manager.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheck = false;
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
                    Checkbox(
                        activeColor: Colors.white,
                        checkColor: redColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termsNconditions,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            ))
                      ])),
                    )
                  ],
                ),
                ourButton(
                  onpress: () {},
                  color: isCheck == true? redColor : lightGrey,
                  textColor: whiteColor,
                  title: signUp,
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: alreadyHaveAnAcc,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )),
                  TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      ))
                ])).onTap(() {
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
