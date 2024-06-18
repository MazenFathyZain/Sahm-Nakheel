import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/features/profile/ui/widgets/person_avatar.dart';

class AppbarAndPersonimage extends StatelessWidget {
  const AppbarAndPersonimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 175.h,
              decoration: BoxDecoration(
                color: ColorsManager.mainGreen.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 20.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/images/white_logo.svg'),
                    SvgPicture.asset('assets/images/drawer_icon.svg'),
                  ],
                ),
              ),
            ),
            verticalSpace(130.h),
            const PersonAvatar(),
          ],
        ),
      ],
    );
  }
}
