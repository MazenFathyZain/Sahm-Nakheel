import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/core/widgets/app_text_button.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/sahm_logo.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';

class PasswordRecoveredScreen extends StatelessWidget {
  const PasswordRecoveredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.h, vertical: 30.0.h),
          child: Column(
            children: [
              verticalSpace(40),
              const SahmLogo(),
              verticalSpace(40),
              Text('Verification Code', style: TextStyles.font18BlackBold),
              verticalSpace(70),
              SvgPicture.asset('assets/images/login_check.svg'),
              verticalSpace(80.h),
              AppTextButton(
                buttonText: 'Login',
                textStyle: TextStyles.font16WhiteSemiBold,
                buttonWidth: 170.w,
                onPressed: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
