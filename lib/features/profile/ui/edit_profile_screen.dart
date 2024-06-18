import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/features/transactions/ui/widgets/filter_text_button.dart';
import 'package:sahm_nakheel/core/widgets/app_text_form_field.dart';
import 'package:sahm_nakheel/features/profile/ui/widgets/person_avatar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    const PersonAvatar(),
                    GestureDetector(
                      onTap: () {
                        context.pushReplacementNamed(Routes.profileScreen);
                      },
                      child: SvgPicture.asset('assets/images/menu.svg'),
                    ),
                  ],
                ),
                verticalSpace(40.h),
                AppTextFormField(
                  hintText: 'First Name',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Last Name',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Date of birth',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'National ID',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Location',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Email',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Phone Number',
                  validator: (validator) {},
                  suffixIcon: Image.asset('assets/images/edit.png'),
                ),
                verticalSpace(30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterTextButton(
                      buttonWidth: 200.w,
                      buttonText: 'Cancel',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      backgroundColor: ColorsManager.naveyBlue,
                      onPressed: () {
                        context.pushNamed(Routes.profileScreen);
                      },
                    ),
                    horizontalSpace(20.w),
                    FilterTextButton(
                      buttonText: 'Save',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        context.pushNamed(Routes.profileScreen);
                      },
                      buttonWidth: 200.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
