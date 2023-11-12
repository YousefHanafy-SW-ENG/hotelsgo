import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/utils/app-color.dart';
enum PageRouteAnimation { Fade, Scale, Rotate, Slide, SlideBottomTop }

class Routes {
  Routes._internal();
  static const String splashRoute = "/";
  static const String onboargingRoute = "/onBoardingCustom";
  static const String onboarding1 = "/onboarding_1";
  static const String onboarding2 = "/onboarding_2";
  static const String onboarding3 = "/onboarding_3";
  static const String loginRoute = "/login_screen";
  static const String signupRoute = "/signup_screen";
  static const String bookingScreen1Route = "/booking_screen_1";
  static const String categoriesRoute = "/categories";
  static const String homeRoute = "/home";
  static const String forgetpassOtpRoute = "/forgetpassOtp";
  static const String forgetpass = "/forgetPassword";

  static const String resetpasswordRoute = "/resetpassword";
  //static const String loginRoute = "/login";
  static const String languageRoute = "/language";
  static const String messegesRoute = "/messeges";
  static const String notificationRoute = "/notification";
  static const String ourWorkRoute = "/ourWork";
  static const String privacyRoute = "/privacy";
  static const String profileScreenRoute = "/profileScreen";
  static const String projecDetailsRoute = "/projecDetails";
  static const String ProgressRoute = "/Progress";
  static const String reviewsRoute = "/reviews";
  static const String settingRoute = "/setting";
  //static const String signUpRoute = "/signUp";
  static const String splashSmallRoute = "/splashSmall";
  static const String splashLargeRoute = "/splashlarge";
  static const String splashWithTextRoute = "/splashWithText";
  static const String signFirstRoute = "/signupfirst";

}


class RouteGenerator {
  RouteGenerator._internal();
  PageRouteAnimation? pageRouteAnimationGlobal;
  static Duration pageRouteTransitionDurationGlobal = 400.milliseconds;


  static Route<dynamic>? getRoute(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      case Routes.splashRoute:
      //  return buildPageRoute(child: const SplashScreen(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade );
      case Routes.onboarding1:
     //   return buildPageRoute(child: const OnBoarding1(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade);
      case Routes.onboarding2:
     //   return buildPageRoute(child: const OnBoarding2(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade);
      case Routes.onboarding3:
         // return buildPageRoute(child: const OnBoarding3(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade);
      case Routes.loginRoute:
        // return buildPageRoute(child: const LoginScreen(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade);
      case Routes.signupRoute:
        // return buildPageRoute(child: const SignupScreen(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade);
      case Routes.bookingScreen1Route:
        // return buildPageRoute(child: const BookingScreen1(), routeSettings: routeSettings,pageRouteAnimation:PageRouteAnimation.Fade);

    }
    return buildPageRoute(
        child: const Center(
          child: Text("no route found"),
        ),
        routeSettings: routeSettings);
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    PageRouteAnimation? pageRouteAnimation,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    if (pageRouteAnimation != null) {
      if (pageRouteAnimation == PageRouteAnimation.Fade) {
        return PageRouteBuilder(
          settings: routeSettings,
          transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
          reverseTransitionDuration: const Duration(milliseconds: 50),
          pageBuilder: (c, a1, a2) => child,
          transitionsBuilder: (c, anim, a2, child) {
            return FadeTransition(opacity: anim, child: child);
          },
        );
      } else if (pageRouteAnimation == PageRouteAnimation.Rotate) {
        return PageRouteBuilder(
          settings: routeSettings,
          pageBuilder: (c, a1, a2) => child,
          transitionsBuilder: (c, anim, a2, child) {
            return RotationTransition(child: child, turns: ReverseAnimation(anim));
          },
          transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
        );
      } else if (pageRouteAnimation == PageRouteAnimation.Scale) {
        return PageRouteBuilder(
          settings: routeSettings,
          pageBuilder: (c, a1, a2) => child,
          transitionsBuilder: (c, anim, a2, child) {
            return ScaleTransition(child: child, scale: anim);
          },
          transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
        );
      } else if (pageRouteAnimation == PageRouteAnimation.Slide) {
        return PageRouteBuilder(
          settings: routeSettings,
          pageBuilder: (c, a1, a2) => child,
          transitionsBuilder: (c, anim, a2, child) {
            return SlideTransition(
              child: child,
              position: Tween(
                begin: Offset(1.0, 0.0),
                end: Offset(0.0, 0.0),
              ).animate(anim),
            );
          },
          transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
        );
      } else if (pageRouteAnimation == PageRouteAnimation.SlideBottomTop) {
        return PageRouteBuilder(
          settings: routeSettings,
          pageBuilder: (c, a1, a2) => child,
          transitionsBuilder: (c, anim, a2, child) {
            return SlideTransition(
              child: child,
              position: Tween(
                begin: Offset(0.0, 1.0),
                end: Offset(0.0, 0.0),
              ).animate(anim),
            );
          },
          transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
        );
      }
    }
    return MaterialPageRoute<T>(
      builder: (_) => AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: AppColors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
          child: child),
      settings: routeSettings,
    );
  }
}
