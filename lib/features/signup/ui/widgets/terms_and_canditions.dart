import 'package:flutter/material.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

class TermsAndCanditions extends StatefulWidget {
  const TermsAndCanditions({super.key});

  @override
  State<TermsAndCanditions> createState() => _TermsAndCanditionsState();
}

class _TermsAndCanditionsState extends State<TermsAndCanditions> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: 1,
          groupValue: selectedValue,
          onChanged: (int? value) {
            setState(() {
              selectedValue = value ?? 0;
            });
          },
        ),
        RichText(
          text: TextSpan(
            text: 'I have read and agree to the ',
            style: TextStyles.font15MainGreenRegular,
            children: <TextSpan>[
              TextSpan(
                text: 'Terms and\nCanditions & Privacy policy.',
                style: TextStyles.font15DarkGreenRegular,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
