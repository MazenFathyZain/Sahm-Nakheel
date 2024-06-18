import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/widgets/app_text_form_field.dart';

class SignUpForms extends StatefulWidget {
  const SignUpForms({super.key});

  @override
  State<SignUpForms> createState() => _SignUpFormsState();
}

class _SignUpFormsState extends State<SignUpForms> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'First Name',
            validator: (value) {},
          ),
          verticalSpace(10.h),
          AppTextFormField(
            hintText: 'Last Name',
            validator: (value) {},
          ),
          verticalSpace(10.h),
          AppTextFormField(
            hintText: 'Mobile Number',
            validator: (value) {},
            textInputType: TextInputType.phone,
          ),
          verticalSpace(10.h),
          AppTextFormField(
            hintText: 'Email Address',
            validator: (value) {},
          ),
          verticalSpace(10.h),
          AppTextFormField(
            hintText: 'Password',
            isObscureText: isObscureText,
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
            validator: (value) {},
          ),
        ],
      ),
    );
  }
}
