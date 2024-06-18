import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TransactionsAppBar extends StatelessWidget {
  const TransactionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          SvgPicture.asset('assets/images/green_drawer.svg'),
        ],
      ),
    );
  }
}
