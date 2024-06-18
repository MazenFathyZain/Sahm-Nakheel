import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

class SearchTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? textInputType;

  const SearchTextFormField({
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
    this.preffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.mainGreen),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
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
          hintStyle: hintStyle ?? TextStyles.font13GreyRegular,
          hintText: hintText,
          hintMaxLines: 2,
          suffixIcon: suffixIcon,
          prefixIcon: preffixIcon,
          filled: true,
          fillColor: Colors.white,
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
