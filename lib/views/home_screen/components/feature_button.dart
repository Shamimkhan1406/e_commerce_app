import 'package:emart_app/consts/consts.dart';

Widget featureButton({required String? title , required icon}){
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).white.roundedSM.padding(const EdgeInsets.all(8)).outerShadowSm.make();
}