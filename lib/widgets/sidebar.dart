import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/widgets/sidebar_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 593.h,
      width: isCollapsed ? 64.w : 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!isCollapsed)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Image.asset(logo, width: 210.w),
                    ),
                  ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isCollapsed = !isCollapsed;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 10,
                      ),
                      child: Icon(
                        isCollapsed
                            ? Icons.keyboard_arrow_right
                            : Icons.keyboard_arrow_left,
                        size: 30.sp,
                        color: const Color(0XFF19BD81),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (!isCollapsed)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  SideBarButton(
                    isCollapsed: isCollapsed,
                    text: "Грузы",
                    icon: icon1,
                    rightIcon: Icons.keyboard_arrow_down,
                    isGrey: false,
                  ),
                  SideBarButton(
                    isCollapsed: isCollapsed,
                    text: "На складе в Китае",
                    icon: icon1,
                    isGrey: false,
                  ),
                  SideBarButton(
                    isCollapsed: isCollapsed,
                    text: "Сортировка",
                    icon: icon2,
                    isGrey: true,
                  ),
                  SideBarButton(
                    isCollapsed: isCollapsed,
                    text: "Отправки",
                    icon: icon3,
                    isGrey: true,
                  ),
                  SideBarButton(
                    isCollapsed: isCollapsed,
                    text: "Посылки",
                    icon: icon4,
                    isGrey: false,
                    rightIcon: Icons.keyboard_arrow_right,
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                  ),
                  SideBarButton(
                    isCollapsed: isCollapsed,
                    text: "Выход",
                    icon: icon5,
                    isGrey: false,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
