import 'package:flutter/material.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

class SignUpLoginText extends StatelessWidget {
  const SignUpLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Not your first time here ? ',
            style: TextStyles.font22MidGreenBold),
        GestureDetector(
          child: Text(
            ' Log in',
            style: TextStyles.font18DarkGreenBold,
          ),
          onTap: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}
