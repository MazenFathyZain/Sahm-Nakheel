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

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isObscureText = true;
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
                Text('Reset Password', style: TextStyles.font18BlackBold),
                const Text(
                  'Please enter a new password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: ColorsManager.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                verticalSpace(120.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0.h),
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'New Password',
                        validator: (value) {},
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: ColorsManager.darkGreen,
                          ),
                        ),
                      ),
                      verticalSpace(30.h),
                      AppTextFormField(
                        hintText: 'Confirm New Password',
                        validator: (value) {},
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: ColorsManager.darkGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(200.h),
                AppTextButton(
                  buttonText: 'Save',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  buttonWidth: 150.w,
                  onPressed: () {
                    context.pushNamed(Routes.passwordRecovered);
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
