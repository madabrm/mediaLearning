import 'package:flutter/material.dart';
import 'package:media_learning/utilities/extensions/company_colors.dart';
import 'package:media_learning/views/checkout/checkout_success_view.dart';
import 'package:media_learning/views/landing/landing_view.dart';
import 'package:media_learning/views/launcher/launcher_view.dart';
import 'package:media_learning/views/login/login_view.dart';
import 'package:media_learning/views/register/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CompanyColors.accent,
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/checkout/success',
      routes: {
        '/': (context) => const LandingView(),
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/launcher': (context) => const LauncherView(),
        '/learning': (context) => const LoginView(),
        '/checkout': (context) => const LoginView(),
        '/checkout/success': (context) => const CheckoutSuccessView(),
        '/checkout/detail': (context) => const LoginView(),
      },
    );
  }
}
