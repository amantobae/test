import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_textfield.dart';
import 'package:flutter_application_1/widgets/profile_card.dart';
import 'package:flutter_application_1/widgets/sidebar.dart';
import 'package:flutter_application_1/widgets/table_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F8FC),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SideBar(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const ProfileCard(),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.sp),
                    child: Row(
                      children: [
                        Text(
                          "Грузы на складе в Китае",
                          style: TextStyle(fontSize: 35.sp),
                        ),
                        const Spacer(),
                        const CustomButton(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(right: 30.w),
                    child: const CustomField(),
                  ),
                  SizedBox(height: 20.h),
                  const CustomTable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
