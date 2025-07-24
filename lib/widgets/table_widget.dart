import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/widgets/pagination_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle cellStyle = TextStyle(fontSize: 12.sp);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Container(
        height: 520.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF001464),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.r),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              child: const Row(
                children: [
                  _HeaderCell('Код клиента'),
                  _HeaderCell('Номер груза'),
                  _HeaderCell('Категория'),
                  _HeaderCell('Кол-во'),
                  _HeaderCell('Статус'),
                  _HeaderCell('Комментарий'),
                  _HeaderCell(''),
                ],
              ),
            ),
            ...List.generate(10, (index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 0.5,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    _DataCell('12345678', style: cellStyle),
                    _DataCell('12345678', style: cellStyle),
                    _DataCell(index.isEven ? 'Одежда' : 'Обувь',
                        style: cellStyle),
                    _DataCell('${index + 1}/10', style: cellStyle),
                    _DataCell(
                      index.isEven ? 'На складе в Китае' : 'В пути',
                      style: cellStyle.copyWith(
                        color: index.isEven ? Colors.black : Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    _DataCell('Есть стеклянные посуды...', style: cellStyle),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            eyeIcon,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 6.w),
                          Image.asset(
                            pencilIcon,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 6.w),
                          Image.asset(
                            deleteIcon,
                            height: 20.h,
                            width: 20.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PaginationWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderCell extends StatelessWidget {
  final String text;
  const _HeaderCell(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: text.isEmpty ? 2 : 3,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _DataCell extends StatelessWidget {
  final String text;
  final TextStyle style;

  const _DataCell(this.text, {required this.style});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Text(
        text,
        style: style,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
