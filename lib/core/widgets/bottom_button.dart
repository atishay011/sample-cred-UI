import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const BottomButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70.h,
        decoration:  BoxDecoration(
          color: Config.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40).r,
            topRight: Radius.circular(40).r,
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: Ts.demi20(Colors.white),
          ),
        ),
      ),
    );
  }
}
