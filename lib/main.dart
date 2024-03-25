import 'package:_9app/bindings/bindings.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/view/nav_screens.dart/dashboard.dart';
import 'package:_9app/view/transaction_screens/deposit_screens/deposit/deposit_currency.dart';
import 'package:_9app/widgets/nav_bar/homenav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'routes/names.dart';
import 'routes/pages.dart';

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
                          seedColor: AppColors.primaryColor),
                      useMaterial3: true),
                  initialRoute: AppRoutes.splash,
                  getPages: AppPages.routes,
                  // home: HomeNav(),
                )));
  }
}
