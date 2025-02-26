import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';

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
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            //swiper brands
            VxSwiper.builder(
              aspectRatio: 16/9,
              autoPlay: true,
              height: 160,
              enlargeCenterPage: true,
                itemCount: sliderList.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    sliderList[index],
                    fit: BoxFit.fill,
                  ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                })
          ],
        ),
      ),
    );
  }
}
