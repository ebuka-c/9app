import 'package:_9app/widgets/verification_widgets/img_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text_widget.dart';

class FaceVerification extends StatelessWidget {
  const FaceVerification({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 18.w),
        child: Column(
          children: [
            ImageUpload(w: w, text: 'Upload portrait photo'),
            Image.asset('assets/images/notes2.png')
          ],
        ),
      ),
    );
  }
}
