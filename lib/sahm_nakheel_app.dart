import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/routing/app_router.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';

class SahmNakeelApp extends StatelessWidget {
  final AppRouter appRouter;
  const SahmNakeelApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Sahm Nahkeel App',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          unselectedWidgetColor: Colors.grey,
          primaryColor: ColorsManager.mainGreen,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generateRout,
      ),
    );
  }
}
