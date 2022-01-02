import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';

class LargButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;

  const LargButton(
      {Key? key,
      this.backgroundColor = AppColor.mainColor,
      this.textColor,
      required this.text,
      this.onTap,
      this.isBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 60,
        margin: const EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
              color: AppColor.mainColor,
            )),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )),
      ),
    );
  }
}
