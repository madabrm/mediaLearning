import 'package:flutter/material.dart';
import 'package:media_learning/utilities/constants/text_size.dart';
import 'package:media_learning/utilities/constants/widget_size.dart';
import 'package:media_learning/utilities/extensions/company_colors.dart';
import 'package:media_learning/views/login/login_view.dart';
import '../../utilities/constants/spaces.dart';
import '../../utilities/constants/assets.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: WidgetSize.rectangleHeight,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: Spaces.conate),
              child: const Text(
                "Butuh bantuan?",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: Spaces.mediumLarge),
              child: const Image(
                height: 167,
                image: AssetImage(Assets.imgLanding),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: Spaces.xSmall),
              child: const Text(
                "Belajar Mudah, dimana saja",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: TextSize.title2,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: Spaces.medium),
              child: const Text(
                "Bersama kami lebih mudah untuk memahami pelajaran",
                style: TextStyle(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: WidgetSize.rectangleHeight,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: Spaces.conate),
                  backgroundColor: CompanyColors.accent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
                child: const Text(
                  "Mulai untuk belajar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
