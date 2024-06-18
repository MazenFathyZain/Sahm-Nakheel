import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SahmLogo extends StatelessWidget {
  const SahmLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        SvgPicture.asset(
          'assets/images/logo.svg',
        ),
        SvgPicture.asset(
          'assets/images/menu.svg',
        ),
      ],
    );
  }
}
