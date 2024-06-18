import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(30.h),
              Stack(
                children: [
                  Center(
                      child:
                          Image.asset('assets/images/palm_background.png')),
                  Center(child: Image.asset('assets/images/palm.png')),
                ],
              ),
              verticalSpace(30.h),
              Text(
                'About Us',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 35.sp,
                  color: ColorsManager.darkGreen,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Maximizing your investment opportunities',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  color: ColorsManager.naveyBlue,
                  fontWeight: FontWeight.normal,
                ),
              ),
              verticalSpace(20.h),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text:
                      'Take control of your\nfinancial destiny and build\nfuture\n',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25.sp,
                    color: ColorsManager.naveyBlue,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(child: verticalSpace(50.h)),
                    TextSpan(
                      text:
                          'With Sahm Nakheel, you can own a share, which\nrepresents a palm tree, for an impressive period of\n50 years.\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        color: ColorsManager.naveyBlue,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    WidgetSpan(child: verticalSpace(50.h)),
                    TextSpan(
                      text:
                          'And guess what? The value of one share is a mere\n8000 Egyptian pounds! Such an affordable\ninvestment opens the door to incredible possibilities.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        color: ColorsManager.naveyBlue,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(30.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorsManager.darkGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Reserve your share now',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
