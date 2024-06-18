import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/core/widgets/app_text_button.dart';
import 'package:sahm_nakheel/features/signup/ui/widgets/login_social_media_buttons.dart';
import 'package:sahm_nakheel/features/signup/ui/widgets/sahm_logo.dart';
import 'package:sahm_nakheel/features/signup/ui/widgets/login_text.dart';
import 'package:sahm_nakheel/features/signup/ui/widgets/signup_forms.dart';
import 'package:sahm_nakheel/features/signup/ui/widgets/terms_and_canditions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            children: [
              const SahmLogo(),
              verticalSpace(20.h),
              Text("Sign up for a new account",
                  style: TextStyles.font18BlackBold),
              verticalSpace(20.h),
              const SignUpForms(),
              verticalSpace(10.h),
              const TermsAndCanditions(),
              verticalSpace(10.h),
              AppTextButton(
                buttonText: "Sign Up",
                textStyle: TextStyles.font16WhiteSemiBold,
                buttonWidth: 150.w,
                onPressed: () {
                  context.pushNamed(Routes.homeScreen);
                },
              ),
              verticalSpace(15.h),
              Center(
                child: Text(
                  'or Sign up with',
                  style: TextStyles.font18DarkGreenLight,
                ),
              ),
              verticalSpace(15.h),
              const LoginSocialMediaButtons(),
              verticalSpace(15.h),
              const SignUpLoginText(),
            ],
          ),
        ),
      )),
    );
  }
}
