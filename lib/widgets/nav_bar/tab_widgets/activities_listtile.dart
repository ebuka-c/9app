import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../values/colors.dart';
import '../../text_widget.dart';

class ActivitiesListTile extends StatelessWidget {
  const ActivitiesListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: activities.length,
        itemBuilder: (context, i) => ListTile(
            isThreeLine: true,
            leading: CircleAvatar(
                radius: 20.sp, child: Image.asset('assets/icons/btc.png')),
            title: TextWidget(
                text: activities[i]['title'],
                fontWeight: FontWeight.w500,
                fontSize: 19.sp),
            subtitle: TextWidget(
                text: 'Yesterday at 6:45am',
                fontSize: 14.sp,
                textColor: AppColors.opacityGrey),
            trailing: RichText(
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'roboto',
                        color: Colors.black,
                        fontSize: 14.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${activities[i]['status']}\n',
                          style: TextStyle(
                              color: activities[i]['status'] == 'Failed'
                                  ? Colors.red
                                  : AppColors.green)),
                      TextSpan(
                          text: '0.00002BTC\n',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: '\$1000.47',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp)),
                    ]))),
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(thickness: 0.5));
  }
}

List activities = [
  {
    'title': 'Received',
    'status': 'Failed',
  },
  {
    'title': 'Swap BTC - ETH',
    'status': 'Successful',
  },
  {
    'title': 'Received',
    'status': 'Failed',
  },
  {
    'title': 'Swap BTC - ETH',
    'status': 'Successful',
  },
  {
    'title': 'Received',
    'status': 'Failed',
  },
  {
    'title': 'Swap BTC - ETH',
    'status': 'Successful',
  },
];
