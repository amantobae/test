import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          hintText: 'Введите номер груза',
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 16,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
