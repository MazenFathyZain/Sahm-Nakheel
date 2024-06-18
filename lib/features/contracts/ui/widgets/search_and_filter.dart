import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahm_nakheel/core/helpers/spacing.dart';
import 'package:sahm_nakheel/core/theeming/colors.dart';
import 'package:sahm_nakheel/core/theeming/font_weight_helper.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';
import 'package:sahm_nakheel/features/transactions/ui/widgets/filter_text_button.dart';
import 'package:sahm_nakheel/features/transactions/ui/widgets/search_text_form_field.dart';

class SearchAndFilter extends StatefulWidget {
  const SearchAndFilter({super.key});

  @override
  State<SearchAndFilter> createState() => _SearchAndFilterState();
}

class _SearchAndFilterState extends State<SearchAndFilter> {
  int selectedValue = 0;
  String _selectedItem = 'Contracts';
  DateTime? _selectedDate;

  final List<String> _dropdownItems = [
    'Contract  #1',
    'Contract  #2',
    'Contract  #3',
  ]; // Initial value

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: SearchTextFormField(
            hintText: 'Search by ID , Transaction\nname ...',
            preffixIcon: Image.asset('assets/images/search_icon.png'),
            validator: (validator) {},
          ),
        ),
        horizontalSpace(20.w),
        FilterTextButton(
          buttonHeight: 75.h,
          buttonWidth: 150.w,
          buttonText: 'Filter',
          textStyle: TextStyles.font18WhiteSemiBold,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 70 / 100,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0.w, vertical: 25.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Filter Options',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeightHelper.bold,
                              color: ColorsManager.naveyBlue,
                              fontSize: 25.0.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const Divider(
                            color: ColorsManager.black,
                          ),
                          verticalSpace(15.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Status Section
                              Text(
                                'Status',
                                style: TextStyle(
                                  fontWeight: FontWeightHelper.bold,
                                  color: ColorsManager.naveyBlue,
                                  fontSize: 20.0.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              verticalSpace(10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: selectedValue,
                                          visualDensity: const VisualDensity(
                                            horizontal:
                                                VisualDensity.minimumDensity,
                                            vertical:
                                                VisualDensity.minimumDensity,
                                          ),
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedValue = value ?? 0;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Completed',
                                          style:
                                              TextStyles.font12NaveyBlueNormal,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: selectedValue,
                                          visualDensity: const VisualDensity(
                                            horizontal:
                                                VisualDensity.minimumDensity,
                                            vertical:
                                                VisualDensity.minimumDensity,
                                          ),
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedValue = value ?? 0;
                                            });
                                          },
                                        ),
                                        Text(
                                          'On Hold',
                                          style:
                                              TextStyles.font12NaveyBlueNormal,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: selectedValue,
                                          visualDensity: const VisualDensity(
                                            horizontal:
                                                VisualDensity.minimumDensity,
                                            vertical:
                                                VisualDensity.minimumDensity,
                                          ),
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedValue = value ?? 0;
                                            });
                                          },
                                        ),
                                        Text(
                                          'In Progress',
                                          style:
                                              TextStyles.font12NaveyBlueNormal,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(20.h),
                              // Contract Section
                              Text(
                                'Contract',
                                style: TextStyle(
                                  fontWeight: FontWeightHelper.bold,
                                  color: ColorsManager.naveyBlue,
                                  fontSize: 20.0.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              verticalSpace(10.h),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Text(
                                      'Name',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.sp,
                                        color: ColorsManager.naveyBlue,
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(30.w),
                                  GestureDetector(
                                    onTap: () {
                                      _showDropdownList(context);
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(_selectedItem),
                                            Image.asset(
                                                'assets/images/arrow_icon.png')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(20.h),
                              // Contract Section
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontWeight: FontWeightHelper.bold,
                                  color: ColorsManager.naveyBlue,
                                  fontSize: 20.0.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              verticalSpace(10.h),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Text(
                                      'To',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.sp,
                                        color: ColorsManager.naveyBlue,
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(30.w),
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                'assets/images/calender_icon.png'),
                                            _selectedDate != null
                                                ? Text(
                                                    '${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}')
                                                : const Text('Pick date'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(10.h),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Text(
                                      'From',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.sp,
                                        color: ColorsManager.naveyBlue,
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(30.w),
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                'assets/images/calender_icon.png'),
                                            _selectedDate != null
                                                ? Text(
                                                    '${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}')
                                                : const Text('Pick date'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(20.h),
                              // Amount Section
                              Text(
                                'Amount',
                                style: TextStyle(
                                  fontWeight: FontWeightHelper.bold,
                                  color: ColorsManager.naveyBlue,
                                  fontSize: 20.0.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              verticalSpace(10.h),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Text(
                                      'To',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.sp,
                                        color: ColorsManager.naveyBlue,
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(30.w),
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                'assets/images/calender_icon.png'),
                                            _selectedDate != null
                                                ? Text(
                                                    '${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}')
                                                : const Text('Pick date'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(10.h),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Text(
                                      'From',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.sp,
                                        color: ColorsManager.naveyBlue,
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(30.w),
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                'assets/images/calender_icon.png'),
                                            _selectedDate != null
                                                ? Text(
                                                    '${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}')
                                                : const Text('Pick date'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }

  void _showDropdownList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: _dropdownItems.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_dropdownItems[index]),
                onTap: () {
                  setState(() {
                    _selectedItem = _dropdownItems[index];
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
}
