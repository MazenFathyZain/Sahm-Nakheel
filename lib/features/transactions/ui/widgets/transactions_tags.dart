import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';

class TransactionsTags extends StatelessWidget {
  const TransactionsTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 100.w,
          height: 30.h,
          decoration: BoxDecoration(
              color: ColorsManager.yellow,
              borderRadius: BorderRadius.circular(15)),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'On Hold',
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontFamily: 'Poppins'),
            ),
          ),
        ),
        horizontalSpace(5.w),
        Container(
          width: 100.w,
          height: 30.h,
          decoration: BoxDecoration(
              color: ColorsManager.blue,
              borderRadius: BorderRadius.circular(15)),
          child: const Align(
            child: Text(
              'In Progress',
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontFamily: 'Poppins'),
            ),
          ),
        ),
        horizontalSpace(5.w),
        Container(
          width: 100.w,
          height: 30.h,
          decoration: BoxDecoration(
              color: ColorsManager.mainGreen,
              borderRadius: BorderRadius.circular(15)),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Completed',
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontFamily: 'Poppins'),
            ),
          ),
        ),
      ],
    );
  }
}
