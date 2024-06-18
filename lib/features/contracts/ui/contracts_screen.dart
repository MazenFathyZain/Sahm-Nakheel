import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/font_weight_helper.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/features/contracts/ui/widgets/contracts_appbar.dart';
import 'package:sahm_nakheel/features/contracts/ui/widgets/contracts_tags.dart';
import 'package:sahm_nakheel/features/contracts/ui/widgets/search_and_filter.dart';

class ContractsScreen extends StatelessWidget {
  const ContractsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 430.h,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                )),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ContractsAppBar(),
                  verticalSpace(30.h),
                  const Text(
                    'Contracts',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeightHelper.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  verticalSpace(10.h),
                  const ContractsTags(),
                  verticalSpace(30.h),
                  const SearchAndFilter(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.zero,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ColorsManager.midGrey,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                color: ColorsManager.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            horizontalSpace(50.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('10 Oct 2024',
                                    style: TextStyles.font14NaveyBlueNormal),
                                Text('CONTRACT #1',
                                    style: TextStyles.font18NaveyBlueBold),
                                Text('Installments',
                                    style: TextStyles.font16MidGreenReguler),
                              ],
                            ),
                            horizontalSpace(90.w),
                            RichText(
                              textAlign: TextAlign.end,
                              text: TextSpan(
                                text: '2000\n',
                                style: TextStyles.font22MidGreenBold,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'EGP',
                                    style: TextStyles.font16MidGreenReguler,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 70.w, right: 10.w),
                          child: Container(
                            height: 40.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorsManager.lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8.0.h,
                                horizontal: 15.0.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('All',
                                      style: TextStyles.font16NaveyBlueReguler),
                                  Text('15',
                                      style: TextStyles.font16NaveyBlueReguler),
                                  Text('Done',
                                      style: TextStyles.font16NaveyBlueReguler),
                                  Text('8',
                                      style: TextStyles.font16NaveyBlueReguler),
                                  Text('Left',
                                      style: TextStyles.font16NaveyBlueReguler),
                                  Text('7',
                                      style: TextStyles.font16NaveyBlueReguler),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  noTransactions() {
    return Column(
      children: [
        verticalSpace(200.h),
        SvgPicture.asset('assets/images/no_trans.svg'),
        verticalSpace(20.h),
        Text(
          'No transactions yet',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppies',
            // fontWeight: FontWeightHelper.reguler,
            color: ColorsManager.naveyBlue.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
