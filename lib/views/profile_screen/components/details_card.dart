import 'package:emart_app/consts/consts.dart';

Widget detailsCard(width, String? count, String? title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.color(darkFontGrey).fontFamily(bold).size(16).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(70)
      .padding(const EdgeInsets.all(4))
      .make();
}
