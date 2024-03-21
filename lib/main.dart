import 'package:_9app/bindings/bindings.dart';
import 'package:_9app/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'widgets/nav_bar/homenav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // for top
        // systemNavigationBarColor: Colors.green, // for bottom
      ),
      child: ScreenUtilInit(
        designSize: const Size(411.42857142857144, 844.5714285714286),
        builder: (context, child) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: AppColors.primaryColor,
                ),
                useMaterial3: true),
            // initialRoute: AppRoutes.splash,
            // getPages: AppPages.routes
            home: HomeNav()),
      ),
    );
  }
}
/*
class Rand2 extends StatefulWidget { 
  const Rand2({super.key});

  @override
  State<Rand2> createState() => _Rand2State();
}

class _Rand2State extends State<Rand2> {
  var rand = [
    Colors.red,
    Colors.purple,
    Colors.pink,
    Colors.yellow,
    Colors.blue,
  ];

  var defaultColor = Colors.red;
  applyRandomColor() {
    var rndColor = Random().nextInt(rand.length);
    setState(() {
      defaultColor = rand[rndColor];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 50.0),
              padding: EdgeInsets.all(4.0),
              child: ElevatedButton(
                onPressed: applyRandomColor,
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8.0),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(50, 15, 50, 15)),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
                child: Text('Change Background',
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
*/