// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class LineChart extends StatefulWidget {
//   const LineChart({super.key});

//   @override
//   State<LineChart> createState() => _LineChartState();
// }

// class _LineChartState extends State<LineChart> {
//   late List _data;

//   @override
//   void initState() {
//     super.initState();
//     _data = [
//       ChartData(100, 'mon'),
//       ChartData(20, 'tue'),
//       ChartData(40, 'wed'),
//       ChartData(15, 'thur'),
//       ChartData(5, 'sun'),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SfCartesianChart(
//         primaryXAxis: CategoryAxis(
//           isVisible: false,
//         ),
//         series: <SplineSeries<ChartData, String>>[
//           SplineSeries<ChartData, String>(
//             dataSource: <ChartData>[
//               ChartData(100, 'mon'),
//               ChartData(20, 'tue'),
//               ChartData(40, 'wed'),
//               ChartData(15, 'thur'),
//               ChartData(5, 'sun'),
//             ],
//             xValueMapper: (ChartData sales, _) => sales.day.toString(),
//             yValueMapper: (ChartData sales, _) => sales.price,
//           )
//         ],
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.day, this.price);
//   final int day;
//   final String price;
// }

// import 'dart:async';

// import 'package:flutter/material.dart';

// class MyLineChart extends StatefulWidget {
//   const MyLineChart({super.key});

//   final Color sinColor=Colors.blue;
//   final Color cosColor=Colors.red;

//   @override
//   State<MyLineChart> createState() => _MyLineChartState();
// }

// class _MyLineChartState extends State<MyLineChart> {

//   final limitCount=100;
//   final minPoints=<FlSpot>[];
//   final maxPoints=<FlSpot>[];

//   double x=0;
//   double stop=0;

//   late Timer timer;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     timer=Timer.periodic(const Duration(milliseconds: 40), (timer) { 
//       while(sinPoints.length>limitCount){
//         sinPoints.removeAt(0);
//       }
//       setState(() {
//         sinPoints.add(FlSpot)
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// List sinPoints=[];