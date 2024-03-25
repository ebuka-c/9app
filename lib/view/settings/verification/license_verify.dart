import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text_widget.dart';

class DriversLicenseVerification extends StatelessWidget {
  const DriversLicenseVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextWidget(text: 'Verify Drivers License', fontSize: 23.sp)),
    );
  }
}
