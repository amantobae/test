import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageNumber extends StatelessWidget {
  final int number;
  final bool isSelected;
  final VoidCallback onTap;

  const PageNumber({
    super.key,
    required this.number,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4.r),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF007BFF) : Colors.transparent,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          number.toString(),
          style: TextStyle(
            fontSize: 14.sp,
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class PageButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const PageButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, size: 20.sp),
      onPressed: onPressed,
      splashRadius: 20.r,
    );
  }
}
