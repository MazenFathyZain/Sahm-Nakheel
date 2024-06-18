import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/features/home/data/model/landing.dart';
import 'package:sahm_nakheel/features/home/logic/cubit/landing_cubit.dart';
import 'package:sahm_nakheel/features/home/ui/widgets/get_started.dart';
import 'package:sahm_nakheel/features/home/ui/widgets/my_drawer.dart';

import 'widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Landing> dataList;

  @override
  void initState() {
    dataList = [];
    BlocProvider.of<LandingCubit>(context).getLandingData();
    super.initState();
  }

  Future<void> _refresh() async {
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));
    BlocProvider.of<LandingCubit>(context).getLandingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: BlocBuilder<LandingCubit, LandingState>(
        builder: (context, state) {
          if (state is GetLandingData) {
            dataList = (state).landingData;
            var data = dataList[0];
            return RefreshIndicator(
              onRefresh: _refresh,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Column(
                      children: [
                        const HomeAppBar(),
                        // verticalSpace(10.h),
                        GetStarted(
                          englishTitle: data.englishTitle!,
                          englishSlogan: data.englishSlogan!,
                          englishActionButtonText:
                              data.englishActionButtonText!,
                        ),
                        verticalSpace(10.h),
                        Column(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                text: 'Investment Plans\n',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w900,
                                  color: ColorsManager.darkGreen,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text:
                                        'Your Path to Effortless Financial Growth',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.sp,
                                        color: ColorsManager.naveyBlue,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                            ),
                            verticalSpace(15.h),
                            SizedBox(
                                height: 380.h,
                                width: double.infinity,
                                child: investments(data)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else if (state is LandingError) {
            return Center(
              child: Text(state.errorMassage),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget investments(Landing data) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: data.investmentPlans!.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400.h,
                width: 300.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: ColorsManager.mainGreen,
                  ),
                  color: data.investmentPlans![index].isMostPopular!
                      ? ColorsManager.darkGreen
                      : Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${data.investmentPlans![index].numberOfTrees}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w900,
                              color: data.investmentPlans![index].isMostPopular!
                                  ? Colors.white
                                  : ColorsManager.darkGreen,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text:
                                  '${data.investmentPlans![index].englishName}\n',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 25.sp,
                                color: ColorsManager.mainGreen,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                WidgetSpan(child: verticalSpace(40.h)),
                                TextSpan(
                                  text:
                                      '${data.investmentPlans![index].englishYearsRoi}\n',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    color: ColorsManager.mainGreen,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                WidgetSpan(child: verticalSpace(30.h)),
                                TextSpan(
                                  text:
                                      '${data.investmentPlans![index].roi} EGP',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    color: data.investmentPlans![index]
                                            .isMostPopular!
                                        ? Colors.white
                                        : ColorsManager.mainGreen,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(20.h),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/images/bullet.png'),
                                  verticalSpace(5.h),
                                  Image.asset('assets/images/bullet.png'),
                                  verticalSpace(5.h),
                                  Image.asset('assets/images/bullet.png'),
                                  verticalSpace(5.h),
                                  Image.asset('assets/images/bullet.png'),
                                  verticalSpace(5.h),
                                  Image.asset('assets/images/bullet.png'),
                                  verticalSpace(5.h),
                                  Image.asset('assets/images/bullet.png'),
                                ],
                              ),
                              horizontalSpace(10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${data.investmentPlans![index].englishNote1}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: data.investmentPlans![index]
                                              .isMostPopular!
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  verticalSpace(5.h),
                                  Text(
                                    '${data.investmentPlans![index].englishNote2}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: data.investmentPlans![index]
                                              .isMostPopular!
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  verticalSpace(5.h),
                                  Text(
                                    '${data.investmentPlans![index].englishNote3}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: data.investmentPlans![index]
                                              .isMostPopular!
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  verticalSpace(5.h),
                                  Text(
                                    '${data.investmentPlans![index].englishNote4}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: data.investmentPlans![index]
                                              .isMostPopular!
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  verticalSpace(5.h),
                                  Text(
                                    '${data.investmentPlans![index].englishNote5}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: data.investmentPlans![index]
                                              .isMostPopular!
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  verticalSpace(5.h),
                                  Text(
                                    '${data.investmentPlans![index].englishNote6}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: data.investmentPlans![index]
                                              .isMostPopular!
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${data.investmentPlans![index].price} EGP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              color: data.investmentPlans![index].isMostPopular!
                                  ? Colors.white
                                  : ColorsManager.darkGreen,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          data.investmentPlans![index].isMostPopular!
                              ? Text(
                                  'Most Popular',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.sp,
                                    color: Colors.yellow[700],
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              horizontalSpace(20.w),
            ],
          );
        });
  }
}
