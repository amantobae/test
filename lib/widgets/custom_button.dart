import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45.h,
        width: 145.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: const Color(0XFF0061C2),
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            "Добавить груз",
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
