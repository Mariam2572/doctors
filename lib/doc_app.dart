// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctors/Core/routing/routes.dart';
import 'package:doctors/Core/theming/app_color.dart';
import 'package:flutter/material.dart';

import 'package:doctors/Core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  AppRouter appRouter;
  DocApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.obBoarding,
          theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primaryColor: AppColor.primaryColor),
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
