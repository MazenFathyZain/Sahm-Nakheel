import 'package:flutter/material.dart';
import 'package:sahm_nakheel/core/di/dependency_injection.dart';
import 'package:sahm_nakheel/core/routing/app_router.dart';
import 'package:sahm_nakheel/sahm_nakheel_app.dart';

void main()  {
  setupGetIt();
  // To fix text being hidden bug in flutter_screenutil in release mode.
  // await ScreenUtil.ensureScreenSize();
  runApp(SahmNakeelApp(
    appRouter: AppRouter(),
  ));
}
