import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text_widget.dart';

class ImgUpload extends StatelessWidget {
  const ImgUpload({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 25.w),
        child: Column(
          children: [
            TextWidget(text: 'Upload Image of ID Card'),
          ],
        ),
      ),
    );
  }
}
