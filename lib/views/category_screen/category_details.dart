import 'package:emart_app/views/category_screen/item_details.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/route_manager.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: title!.text.white.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      6,
                      (index) => "baby clothing"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .roundedSM
                          .white
                          .size(120, 50)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .make(),
                    ),
                  ],
                ),
              ),
              //items container
              20.heightBox,
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        //const Spacer(),
                        "hp laptop 4gb,500gb".text.make(),
                        10.heightBox,
                        "\$499".text.fontFamily(bold).color(redColor).make(),
                      ],
                    )
                        .box
                        .white
                        .outerShadowSm
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .padding(const EdgeInsets.all(12))
                        .make()
                        .onTap(() {
                          Get.to(()=>const ItemDetails(title: "dummyTitle"));
                        });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
