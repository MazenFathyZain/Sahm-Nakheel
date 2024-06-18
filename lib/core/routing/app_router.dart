import 'package:flutter/material.dart';
import 'package:sahm_nakheel/core/di/dependency_injection.dart';
import 'package:sahm_nakheel/core/routing/routes.dart';
import 'package:sahm_nakheel/features/about/ui/about.dart';
import 'package:sahm_nakheel/features/contracts/ui/contracts_screen.dart';
import 'package:sahm_nakheel/features/home/logic/cubit/landing_cubit.dart';
import 'package:sahm_nakheel/features/home/ui/home_screen.dart';
import 'package:sahm_nakheel/features/login/logic/cubit/login_cubit.dart';
import 'package:sahm_nakheel/features/login/ui/forgotten_password_screen.dart';
import 'package:sahm_nakheel/features/login/ui/login_screen.dart';
import 'package:sahm_nakheel/features/login/ui/password_recovered_screen.dart';
import 'package:sahm_nakheel/features/login/ui/reset_password_screen.dart';
import 'package:sahm_nakheel/features/profile/ui/edit_profile_screen.dart';
import 'package:sahm_nakheel/features/profile/ui/profile_screen.dart';
import 'package:sahm_nakheel/features/signup/logic/sign_up_cubit.dart';
import 'package:sahm_nakheel/features/signup/ui/confirm_code_screen.dart';
import 'package:sahm_nakheel/features/signup/ui/signup_screen.dart';
import 'package:sahm_nakheel/features/transactions/ui/transactions_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRout(RouteSettings settings) {
    // ignore: unused_local_variable
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LandingCubit>(),
            child: const HomeScreen(),
          ),
        );
      case Routes.aboutScreen:
        return MaterialPageRoute(
          builder: (_) => const AboutScreen(),
        );
       case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.confirmCode:
        return MaterialPageRoute(
          builder: (_) => const ConfirmCodeScreen(),
        );
      case Routes.forgottenPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgottenPasswordScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.passwordRecovered:
        return MaterialPageRoute(
          builder: (_) => const PasswordRecoveredScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case Routes.editProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );
      case Routes.transactionsScreen:
        return MaterialPageRoute(
          builder: (_) => const TransactionsScreen(),
        );
      case Routes.contractsScreen:
        return MaterialPageRoute(
          builder: (_) => const ContractsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('no route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
