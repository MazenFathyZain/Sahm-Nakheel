// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/font_weight_helper.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

// ignore: must_be_immutable
class ProfileData extends StatelessWidget {
  String? title;
  String? text;
  ProfileData({
    super.key,
    this.title,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(title!, style: TextStyles.font14MainGreenNormal),
          Text(
            text!,
            style: TextStyle(
              color: title != null ? ColorsManager.naveyBlue : Colors.red,
              fontSize: 18.sp,
              fontWeight:
                  title != null ? FontWeightHelper.semiBold : FontWeight.normal,
              fontFamily: 'Poppins',
            ),
          ),
          const Divider(color: ColorsManager.mainGreen),
        ],
      ),
    );
  }
}
