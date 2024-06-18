import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';

class GetStarted extends StatelessWidget {
  final String englishTitle;
  final String englishSlogan;
  final String englishActionButtonText;

  const GetStarted(
      {super.key,
      required this.englishTitle,
      required this.englishSlogan,
      required this.englishActionButtonText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            'assets/images/nakheel.png',
            height: 250.h,
          ),
        ),
        Container(
          height: 370.h,
          color: Colors.transparent,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: '$englishTitle\n',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color: ColorsManager.naveyBlue,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(child: verticalSpace(35.h)),
                      TextSpan(
                        text: 'Affordable investment\n',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          color: ColorsManager.naveyBlue,
                        ),
                      ),
                      TextSpan(
                        text: 'Starting from ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w900,
                          color: ColorsManager.naveyBlue,
                        ),
                      ),
                      TextSpan(
                        text: '9000 EGP\n',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w900,
                          color: ColorsManager.darkGreen,
                        ),
                      ),
                      WidgetSpan(child: verticalSpace(30.h)),
                      TextSpan(
                        text: englishSlogan,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: ColorsManager.naveyBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ColorsManager.darkGreen),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.grey[200]!;
                              }
                              return Colors.grey[200]!;
                            },
                          ),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: ColorsManager.darkGreen,
                              ),
                            ),
                          ),
                        ),
                        child: const Text(
                          'About Us',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: ColorsManager.darkGreen,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
