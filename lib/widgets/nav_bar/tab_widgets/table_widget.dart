import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../values/colors.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(right: 22.w, top: 15.h),
            child: Table(
                border: TableBorder.all(color: Colors.grey, width: 0.2),
                columnWidths: {
                  0: FixedColumnWidth(80.w),
                  1: FixedColumnWidth(10.w),
                  2: FixedColumnWidth(66.w)
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                      decoration:
                          const BoxDecoration(color: AppColors.tableHeader),
                      children: [
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 4.h),
                                child: const TextWidget(
                                    text: '  Currency',
                                    fontWeight: FontWeight.w600))),
                        TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 4.h),
                                child: const TextWidget(
                                    text: '  Price',
                                    fontWeight: FontWeight.w600))),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 12.h),
                          child: const TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: TextWidget(
                                  text: '  Naira Equivalent',
                                  fontWeight: FontWeight.w600)),
                        )
                      ]),
                  ...List.generate(
                      8,
                      (index) => TableRow(children: [
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: Center(
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                                radius: 15,
                                                child: Image.asset(
                                                    'assets/icons/btc.png')),
                                            Gap(w * 0.014.w),
                                            SizedBox(
                                                width: w * 0.152.w,
                                                height: 30,
                                                child: TextWidget(
                                                    text: 'Ethereum',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.sp)),
                                            SizedBox(
                                                width: w * 0.11.w,
                                                child: TextWidget(
                                                    text: 'USDT',
                                                    textColor:
                                                        AppColors.opacityGrey,
                                                    fontSize: 16.sp))
                                          ]),
                                    ))),
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                    padding: EdgeInsets.all(8.sp),
                                    child: const TextWidget(
                                        text: '0.305.8',
                                        textColor: AppColors.green,
                                        fontWeight: FontWeight.w600,
                                        textDirection: TextDirection.rtl))),
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                    padding: EdgeInsets.all(8.sp),
                                    child: TextWidget(
                                        text: '3,566,990.0',
                                        textColor: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        textDirection: TextDirection.rtl)))
                          ]))
                ])));
  }
}

List tableData = [{}];
