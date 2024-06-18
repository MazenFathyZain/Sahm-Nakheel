import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/core/widgets/app_text_button.dart';
import 'package:sahm_nakheel/core/widgets/app_text_form_field.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/sahm_logo.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';

class ForgottenPasswordScreen extends StatelessWidget {
  const ForgottenPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.h, vertical: 30.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(40),
                const SahmLogo(),
                verticalSpace(40),
                Text('Forgotten Password', style: TextStyles.font18BlackBold),
                verticalSpace(100.h),
                const Text(
                  'Please enter your registered\nphone number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorsManager.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'We will send you a verification\ncode to your number shortly',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorsManager.darkGreen,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0.h),
                  child: AppTextFormField(
                    hintText: 'Mobile Number',
                    validator: (value) {},
                    textInputType: TextInputType.phone,
                  ),
                ),
                verticalSpace(150.h),
                AppTextButton(
                  buttonText: 'Send Code',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  buttonWidth: 150.w,
                  onPressed: () {
                    context.pushNamed(Routes.resetPassword);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
