import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/core/widgets/app_text_button.dart';
import 'package:sahm_nakheel/features/login/logic/cubit/login_cubit.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/create_account_text.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/login_forms.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/login_social_media_buttons.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/login_text.dart';
import 'package:sahm_nakheel/features/login/ui/widgets/sahm_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            children: [
              const SahmLogo(),
              verticalSpace(40.h),
              const LoginText(),
              verticalSpace(30.h),
              const LoginForms(),
              verticalSpace(20.h),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.forgottenPassword);
                  },
                  child: Text(
                    'Forgot your password ?',
                    style: TextStyles.font14DarkGreenRegular,
                  ),
                ),
              ),
              verticalSpace(30.h),
              AppTextButton(
                buttonText: "Login",
                textStyle: TextStyles.font16WhiteSemiBold,
                buttonWidth: 150.w,
                onPressed: () {
                  validateThenDoLogin(context);
                },
              ),
              verticalSpace(30.h),
              Center(
                child: Text(
                  'or login with',
                  style: TextStyles.font18DarkGreenLight,
                ),
              ),
              verticalSpace(30.h),
              const LoginSocialMediaButtons(),
              verticalSpace(25.h),
              const CreateAccountText(),
            ],
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
