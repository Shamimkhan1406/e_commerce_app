import 'package:emart_app/consts/consts.dart';

Widget customTextfield({String? title, String? hint, controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        //controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
            color: redColor,
          ))
        ),
      ),
      5.heightBox,
    ],
  );
}