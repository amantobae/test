import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Александр Прокофьев",
                  style: TextStyle(fontSize: 16.sp),
                ),
                Text(
                  "Супер Админ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Image.asset(
              profilePicture,
              height: 50.h,
              width: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
