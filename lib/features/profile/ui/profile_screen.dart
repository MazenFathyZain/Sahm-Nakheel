import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/features/profile/ui/widgets/appbar_and_person_image.dart';
import 'package:sahm_nakheel/features/profile/ui/widgets/profile_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(0.96),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 390.h,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/nakheel.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const AppbarAndPersonimage(),
              ],
            ),
            ProfileData(title: 'Username', text: 'Mazen Fathy'),
            ProfileData(title: 'Email', text: 'mazenfathyr@gmail.com'),
            ProfileData(title: 'Mobile Number', text: '01068068838'),
            ProfileData(title: 'Date of birth', text: '1999/12/11'),
            ProfileData(title: 'National ID', text: '29912112100731'),
            ProfileData(title: 'Location', text: '29616671624985'),
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.editProfileScreen);
              },
              child: ProfileData(text: 'Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
