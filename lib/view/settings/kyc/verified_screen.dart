import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/alert_widgets/verified_kyc.dart';
import '../../../widgets/text_widget.dart';

class KycVerified extends StatelessWidget {
  const KycVerified({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
        body: VerifiedWidget(
            w: w,
            subtitle: 'Congratulations! your ID Card\nhas been verified',
            title: 'You\'re Verified',
            onTap: () => Get.toNamed('AppRoutes.imgUpload')));
  }
}
