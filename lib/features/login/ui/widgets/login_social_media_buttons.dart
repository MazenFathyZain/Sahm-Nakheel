import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';

class LoginSocialMediaButtons extends StatelessWidget {
  const LoginSocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/apple.svg',
        ),
        horizontalSpace(50),
        SvgPicture.asset(
          'assets/images/google.svg',
        ),
        horizontalSpace(50),
        SvgPicture.asset(
          'assets/images/facebook.svg',
        ),
      ],
    );
  }
}
