import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widget_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                //edit profile button
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ).onTap(() {
                  //
                }),

                //user detail section
                Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "dummyuser@gmail.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      child: "logout".text.white.fontFamily(semibold).make(),
                    ),
                  ],
                ),
                20.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(context.screenWidth/3.5, "00", "in your cart"),
                    detailsCard(context.screenWidth/3.5, "39", "in your wishlist"),
                    detailsCard(context.screenWidth/3.5, "12", "your order"),
                  ],
                )
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     "00".text.color(darkFontGrey).fontFamily(bold).size(16).make(),
                //     5.heightBox,
                //     "in your cart".text.color(darkFontGrey).make(),
                //   ],
                // ).box.white.rounded.width(context.screenWidth / 4).height(60).padding(const EdgeInsets.all(4)).make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
