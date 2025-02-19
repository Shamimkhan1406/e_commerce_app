import 'package:emart_app/consts/consts.dart';

Widget ourButton({onpress, color, textColor, title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      // ignore: deprecated_member_use
      primary: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: () {
      onpress;
    },
    child: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontFamily: bold,
      ),
    ),
  );
}
