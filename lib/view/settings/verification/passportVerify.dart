import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text_widget.dart';

class PassportVerification extends StatelessWidget {
  const PassportVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: TextWidget(text: 'Verify Passport', fontSize: 23.sp)),
    );
  }
}
