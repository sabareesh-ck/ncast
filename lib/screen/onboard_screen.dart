import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

import 'package:ncast/widgets/onboard_screen/background.dart';
import 'package:ncast/widgets/onboard_screen/bold_text.dart';
import 'package:ncast/widgets/onboard_screen/mic.dart';
import 'package:ncast/widgets/onboard_screen/ncast_1.dart';
import 'package:ncast/widgets/onboard_screen/ncast_2.dart';
import 'package:ncast/widgets/onboard_screen/normal_text.dart';
import 'package:ncast/widgets/onboard_screen/sign_in.dart';
import 'package:ncast/widgets/onboard_screen/sign_up.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.images.appBar),
      ),
      body: const Column(
        children: [
          Stack(
            children: [
              Background(),
              Ncast1(),
              Ncast2(),
              Mic(),
              Positioned(
                top: 400,
                left: 50,
                child: Column(
                  children: [
                    BoldText(text: 'Listen to your'),
                    BoldText(text: 'favourite podcast'),
                    SizedBox(
                      height: 16,
                    ),
                    NormalText(),
                    SizedBox(
                      height: 70,
                    ),
                    SignIn(),
                  ],
                ),
              )
            ],
          ),
          SignUp(),
        ],
      ),
    );
  }
}
