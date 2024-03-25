import 'package:_9app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../widgets/text_widget.dart';
import '../../../widgets/verification_widgets/img_upload.dart';

class IDUpload extends StatelessWidget {
  const IDUpload({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidget(
                  text: 'Upload Image of ID Card',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
              Gap(15.h),
              ImageUpload(w: w, text: 'Upload front view'),
              Gap(15.h),
              ImageUpload(w: w, text: 'Upload back view'),
              Gap(25.h),
              Image.asset('assets/images/notes.png'),
              Gap(20.h),
              TransactionButton(w: w, text: 'Continue', onTap: () {})
            ])),
      ),
    );
  }
}
