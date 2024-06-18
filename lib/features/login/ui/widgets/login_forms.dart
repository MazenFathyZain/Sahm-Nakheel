import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/widgets/app_text_form_field.dart';
import 'package:sahm_nakheel/features/login/logic/cubit/login_cubit.dart';

class LoginForms extends StatefulWidget {
  const LoginForms({super.key});

  @override
  State<LoginForms> createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  bool isObscureText = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {},
            textInputType: TextInputType.emailAddress,
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(20.h),
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
            controller: context.read<LoginCubit>().passwordController,
          ),
        ],
      ),
    );
  }
   @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
