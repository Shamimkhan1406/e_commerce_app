import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/home_screen/components/feature_button.dart';
import 'package:emart_app/widget_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: lightGrey,
      height: context.screenHeight,
      width: context.screenWidth,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: lightGrey,
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    //swiper brands
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 160,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            sliderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    //deal button
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //List.generate(2,((index) => homeButton(context.screenHeight*0.15, context.screenWidth/2.5, icTodaysDeal, todaydeal, (){}))),
                        homeButton(
                            context.screenHeight * 0.15,
                            context.screenWidth / 2.5,
                            icTodaysDeal,
                            todaydeal,
                            () {}),
                        homeButton(
                            context.screenHeight * 0.15,
                            context.screenWidth / 2.5,
                            icFlashDeal,
                            flashSale,
                            () {}),
                      ],
                    ),
                    //seconde swiper
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 160,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButton(
                            context.screenHeight * 0.12,
                            context.screenWidth / 3.5,
                            icTopCategories,
                            topCategory,
                            () {}),
                        homeButton(context.screenHeight * 0.12,
                            context.screenWidth / 3.5, icBrands, brand, () {}),
                        homeButton(
                            context.screenHeight * 0.12,
                            context.screenWidth / 3.5,
                            icTopSeller,
                            topSaller,
                            () {}),
                      ],
                    ),
                    //featured categories
                    20.heightBox,

                    Align(
                        alignment: Alignment.centerLeft,
                        child: featureCategories.text
                            .color(darkFontGrey)
                            .size(18)
                            .fontFamily(semibold)
                            .make()),
                    20.heightBox,
                    //featureCategories
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [Column(
                            children: [
                              featureButton(title: featureTitle_1[0], icon: featureImg_1[0]),
                              10.heightBox,
                              featureButton(title: featureTitle_2[0], icon: featureImg_2[0]),
                            ]
                          ),
                          Column(
                            children: [
                              featureButton(title: featureTitle_1[1], icon: featureImg_1[1]),
                              10.heightBox,
                              featureButton(title: featureTitle_2[1], icon: featureImg_2[1]),
                            ]
                          ),
                          Column(
                            children: [
                              featureButton(title: featureTitle_1[2], icon: featureImg_1[2]),
                              10.heightBox,
                              featureButton(title: featureTitle_2[2], icon: featureImg_2[2]),
                            ]
                          ),
                          
                          
                        ],
                      ),
                    ),

                    20.heightBox,

                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.white.fontFamily(bold).size(18).make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                    10.heightBox,
                                    "hp laptop 4gb,500gb".text.make(),
                                    10.heightBox,
                                    "\$600".text.fontFamily(bold).color(redColor).make(),
                                  ],
                                ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                    10.heightBox,
                                    "hp laptop 4gb,500gb".text.make(),
                                    10.heightBox,
                                    "\$600".text.fontFamily(bold).color(redColor).make(),
                                  ],
                                ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                    10.heightBox,
                                    "hp laptop 4gb,500gb".text.make(),
                                    10.heightBox,
                                    "\$600".text.fontFamily(bold).color(redColor).make(),
                                  ],
                                ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                    10.heightBox,
                                    "hp laptop 4gb,500gb".text.make(),
                                    10.heightBox,
                                    "\$600".text.fontFamily(bold).color(redColor).make(),
                                  ],
                                ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make(),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    //



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
