import 'package:flutter/material.dart';
import 'package:ridersnew/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:ridersnew/presentation/splash_screen/splash_screen.dart';
import 'package:ridersnew/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:ridersnew/presentation/details_screen/details_screen.dart';
import 'package:ridersnew/presentation/create_screen/create_screen.dart';
import 'package:ridersnew/presentation/menu_screen/menu_screen.dart';
import 'package:ridersnew/presentation/home_screen/home_screen.dart';
import 'package:ridersnew/presentation/create_sample_form_screen/create_sample_form_screen.dart';
import 'package:ridersnew/presentation/create_result_form_screen/create_result_form_screen.dart';
import 'package:ridersnew/presentation/confirmation_success_screen/confirmation_success_screen.dart';
import 'package:ridersnew/presentation/confirmation_error_screen/confirmation_error_screen.dart';
import 'package:ridersnew/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:ridersnew/presentation/profile_screen/profile_screen.dart';
import 'package:ridersnew/presentation/sample_screen/sample_screen.dart';
import 'package:ridersnew/presentation/result_screen/result_screen.dart';
import 'package:ridersnew/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String detailsScreen = '/details_screen';

  static const String createScreen = '/create_screen';

  static const String menuScreen = '/menu_screen';

  static const String homeScreen = '/home_screen';

  static const String createSampleFormScreen = '/create_sample_form_screen';

  static const String createResultFormScreen = '/create_result_form_screen';

  static const String confirmationSuccessScreen =
      '/confirmation_success_screen';

  static const String confirmationErrorScreen = '/confirmation_error_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String profileScreen = '/profile_screen';

  static const String sampleScreen = '/sample_screen';

  static const String resultScreen = '/result_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: OnboardingScreen.builder,
        splashScreen: SplashScreen.builder,
        signInScreen: SignInScreen.builder,
        detailsScreen: DetailsScreen.builder,
        createScreen: CreateScreen.builder,
        menuScreen: MenuScreen.builder,
        homeScreen: HomeScreen.builder,
        createSampleFormScreen: CreateSampleFormScreen.builder,
        createResultFormScreen: CreateResultFormScreen.builder,
        confirmationSuccessScreen: ConfirmationSuccessScreen.builder,
        confirmationErrorScreen: ConfirmationErrorScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        profileScreen: ProfileScreen.builder,
        sampleScreen: SampleScreen.builder,
        resultScreen: ResultScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreen.builder
      };
}
