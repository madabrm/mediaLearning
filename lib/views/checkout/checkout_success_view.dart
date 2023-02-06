import 'package:flutter/material.dart';
import 'package:media_learning/utilities/constants/assets.dart';
import 'package:media_learning/utilities/constants/spaces.dart';
import 'package:media_learning/utilities/constants/widget_size.dart';
import 'package:media_learning/utilities/extensions/company_colors.dart';
import 'package:media_learning/views/course/course_view.dart';

class CheckoutSuccessView extends StatelessWidget {
  const CheckoutSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: Spaces.small),
              child: const Image(
                image: AssetImage(Assets.imgCheckoutSuccess),
                height: 116,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: Spaces.conate),
              margin: const EdgeInsets.only(bottom: Spaces.conate),
              alignment: Alignment.center,
              child: const Text(
                "Anda berhasil berlangganan kelas",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: WidgetSize.rectangleHeight,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: Spaces.conate),
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
                    MaterialPageRoute(builder: (context) => const CourseView()),
                  );
                },
                child: const Text(
                  "Cek Kelas",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
