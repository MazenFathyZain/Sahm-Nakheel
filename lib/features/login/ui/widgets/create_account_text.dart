import 'package:flutter/material.dart';
import 'package:sahm_nakheel/core/helpers/extension.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/core/theeming/styles.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('New here ? ', style: TextStyles.font22MidGreenBold),
        GestureDetector(
            onTap: () {
              context.pushNamed(Routes.signUpScreen);
            },
            child: Text('create an account',
                style: TextStyles.font18DarkGreenBold)),
      ],
    );
  }
}
