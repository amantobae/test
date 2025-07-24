import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/page_number.dart';

class PaginationWidget extends StatefulWidget {
  const PaginationWidget({super.key});

  @override
  State<PaginationWidget> createState() => _PaginationWidgetState();
}

class _PaginationWidgetState extends State<PaginationWidget> {
  int currentPage = 1;
  final int totalPages = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PageButton(
          icon: Icons.chevron_left,
          onPressed: currentPage > 1
              ? () {
                  setState(() {
                    currentPage--;
                  });
                }
              : null,
        ),
        ...List.generate(totalPages, (index) {
          final pageNumber = index + 1;
          return PageNumber(
            number: pageNumber,
            isSelected: currentPage == pageNumber,
            onTap: () {
              setState(() {
                currentPage = pageNumber;
              });
            },
          );
        }),
        PageButton(
          icon: Icons.chevron_right,
          onPressed: currentPage < totalPages
              ? () {
                  setState(() {
                    currentPage++;
                  });
                }
              : null,
        ),
      ],
    );
  }
}
