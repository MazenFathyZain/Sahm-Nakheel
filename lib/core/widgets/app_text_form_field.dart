import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? textInputType;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.controller,
    required this.validator,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF7FCE7A).withOpacity(0.20),
            const Color(0xFF7FCE7A).withOpacity(0.59),
            const Color(0xFF7FCE7A).withOpacity(0.79),
            const Color(0xFF7FCE7A),
          ],
          stops: const [0, 0.33, 0.66, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          focusedBorder: focusBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
          // in case Erorr
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.3),
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.3),
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintStyle: hintStyle ?? TextStyles.font17darkGreenRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.transparent,
        ),
        obscureText: isObscureText ?? false,
        style: TextStyles.font14DarkGreenMediam,
        validator: (value) {
          return validator(value);
        },
      ),
    );
  }
}
