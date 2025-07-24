import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final String text;
  final String icon;
  final bool isGrey;
  final IconData? rightIcon;

  const SideBarButton({
    super.key,
    required this.isCollapsed,
    required this.text,
    required this.icon,
    required this.isGrey,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isGrey ? const Color(0XFFF7F8FC) : Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 50.w),
            Container(
                margin: EdgeInsets.symmetric(vertical: 14.h, horizontal: 10.w),
                child: Image.asset(icon)),
            SizedBox(width: 10.w),
            if (!isCollapsed)
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: isGrey ? FontWeight.w400 : FontWeight.w600,
                    color: isGrey ? Colors.grey : const Color(0XFF000032),
                  ),
                ),
              ),
            if (rightIcon != null)
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Icon(rightIcon, size: 30.sp),
              ),
          ],
        ),
      ),
    );
  }
}
