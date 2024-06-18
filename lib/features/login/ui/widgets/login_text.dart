import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome to ', style: TextStyles.font30BlackReguler),
        Text('Sahm Nakheel', style: TextStyles.font30DarkGreenBold),
        verticalSpace(40.h),
        Text("Login to your account", style: TextStyles.font18BlackBold),
      ],
    );
  }
}
