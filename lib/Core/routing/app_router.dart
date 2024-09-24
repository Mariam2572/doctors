import 'package:doctors/Core/routing/routes.dart';
import 'package:doctors/Features/login/ui/login_screen.dart';
import 'package:doctors/Features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute( RouteSettings settings ) {
  switch(settings.name){
    case Routes.obBoarding:
    return MaterialPageRoute(builder: (_)=> const OnboardingScreen());
    case Routes.loginScreen:
    return MaterialPageRoute(builder: (_)=> const LoginScreen());

    default:
    return MaterialPageRoute(builder: (_) =>  Scaffold(body: 
    Center(child: Text('No route defined for ${settings.name}'))
    ,));
  }
}
}