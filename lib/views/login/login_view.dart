import 'package:flutter/material.dart';
import 'package:media_learning/utilities/constants/assets.dart';
import 'package:media_learning/utilities/constants/text_size.dart';
import 'package:media_learning/utilities/constants/widget_size.dart';
import 'package:media_learning/utilities/extensions/company_colors.dart';
import 'package:media_learning/views/launcher/launcher_view.dart';
import '../../utilities/constants/spaces.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: Spaces.conate),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: WidgetSize.mediumRectangleHeight,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: Spaces.conate),
                margin: const EdgeInsets.only(bottom: Spaces.mediumLarge),
                child: const Text(
                  "Butuh bantuan?",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: Spaces.medium),
                child: const Image(
                  height: 78,
                  image: AssetImage(Assets.imgLogin),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: Spaces.xSmall),
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: TextSize.title2,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: Spaces.xSmall),
                child: const Text(
                  "Silakan masuk dengan username  yang terdaftar",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: Spaces.xLarge),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    "Anda lupa password?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: WidgetSize.rectangleHeight,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: Spaces.medium),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: CompanyColors.accent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LauncherView()),
                    );
                  },
                  child: const Text(
                    "Lanjutkan",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: RichText(
                  text: const TextSpan(
                    text: "Belum punya akun? ",
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Daftar',
                        style: TextStyle(
                          color: CompanyColors.accent,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
