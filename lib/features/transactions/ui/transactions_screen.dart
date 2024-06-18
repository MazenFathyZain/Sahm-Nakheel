import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/font_weight_helper.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/features/transactions/ui/widgets/search_and_filter.dart';
import 'package:sahm_nakheel/features/transactions/ui/widgets/transactions_appbar.dart';
import 'package:sahm_nakheel/features/transactions/ui/widgets/transactions_tags.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

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
                  const TransactionsAppBar(),
                  verticalSpace(30.h),
                  const Text(
                    'Transactions',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeightHelper.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  verticalSpace(10.h),
                  const TransactionsTags(),
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
                    child: Row(
                      children: [
                        Container(
                          height: 25.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.blue,
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
                            Text('ID : 1234567890',
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
