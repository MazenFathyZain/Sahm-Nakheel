import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ColorsManager.darkGreen,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Center(
              child: SizedBox(
                height: 200.h,
                width: 200.w,
                child: SvgPicture.asset(
                  'assets/images/white_logo.svg',
                  width: 200.w,
                  height: 200.h,
                ),
              ),
            ),
          ),
          verticalSpace(30.h),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: ColorsManager.darkGreen,
              size: 30,
            ),
            title: Text(
              'Home Page',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Poppins',
                color: ColorsManager.naveyBlue,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.login,
              color: ColorsManager.darkGreen,
              size: 30,
            ),
            title: Text(
              'Login',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Poppins',
                color: ColorsManager.naveyBlue,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: ColorsManager.darkGreen,
              size: 30,
            ),
            title: Text(
              'Register',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Poppins',
                color: ColorsManager.naveyBlue,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.help_sharp,
              color: ColorsManager.darkGreen,
              size: 30,
            ),
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Poppins',
                color: ColorsManager.naveyBlue,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: ColorsManager.darkGreen,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Poppins',
                color: ColorsManager.naveyBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
