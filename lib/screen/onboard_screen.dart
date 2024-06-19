import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/widgets/background.dart';
import 'package:ncast/widgets/bold_text.dart';
import 'package:ncast/widgets/mic.dart';
import 'package:ncast/widgets/ncast_1.dart';
import 'package:ncast/widgets/ncast_2.dart';
import 'package:ncast/widgets/normal_text.dart';
import 'package:ncast/widgets/sign_in.dart';
import 'package:ncast/widgets/sign_up.dart';

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
