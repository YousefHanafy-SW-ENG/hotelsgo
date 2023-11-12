import 'package:flutter/material.dart';
import 'package:hotelsgo/core/utils/extensions.dart';

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        height: 65.h,
        width: 320.w,
        // padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
      ),
    );
  }
}
