import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialChart extends StatelessWidget {
  const RadialChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.sp),
      child: Stack(children: [
        SfRadialGauge(axes: [
          RadialAxis(
              labelOffset: 0,
              pointers: const [
                RangePointer(
                  value: 20,
                  cornerStyle: CornerStyle.bothFlat,
                  color: AppColors.primaryColor,
                  width: 40,
                )
              ],
              axisLineStyle: const AxisLineStyle(thickness: 30),
              startAngle: 200,
              endAngle: 200,
              showLabels: false,
              showTicks: false,
              annotations: const [
                // GaugeAnnotation(
                //     widget: Positioned(
                //         left: 30,
                //         child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               TextWidget(text: '50.4555939', fontSize: 23),
                //               TextWidget(text: 'BTC Balance')
                //             ])))
              ]),
          RadialAxis(
            pointers: const [
              RangePointer(
                value: 20,
                cornerStyle: CornerStyle.bothFlat,
                color: AppColors.bluish,
                width: 40,
              )
            ],
            startAngle: 10,
            endAngle: 10,
            showLabels: false,
            showTicks: false,
            showAxisLine: false,
          ),
          RadialAxis(
            pointers: const [
              RangePointer(
                value: 20,
                cornerStyle: CornerStyle.bothFlat,
                color: AppColors.pinkish,
                width: 40,
              )
            ],
            startAngle: 90,
            endAngle: 90,
            showLabels: false,
            showTicks: false,
            showAxisLine: false,
          ),
          RadialAxis(
            pointers: const [
              RangePointer(
                value: 20,
                cornerStyle: CornerStyle.bothFlat,
                color: AppColors.yellowish,
                width: 40,
              )
            ],
            startAngle: 40,
            endAngle: 40,
            showLabels: false,
            showTicks: false,
            showAxisLine: false,
          ),
        ]),
        Positioned(
            left: 60.w,
            top: 120.h,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextWidget(
                  text: '50.4555939',
                  fontSize: 23.sp,
                  textColor: AppColors.opacityBlack,
                  fontWeight: FontWeight.bold),
              const TextWidget(
                text: 'BTC Balance',
                textColor: AppColors.opacityBlack,
              )
            ]))
      ]),
    );
  }
}
