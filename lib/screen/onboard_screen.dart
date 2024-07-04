import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/l10n/app_localizations.dart';

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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.images.appBar),
      ),
      body: Localizations.override(
        context: context,
        locale: const Locale('en'),
        child: Builder(builder: (context) {
          return Column(
            children: [
              Stack(
                children: [
                  const Background(),
                  const Ncast1(),
                  const Ncast2(),
                  const Mic(),
                  Positioned(
                    top: height * 0.5,
                    child: SizedBox(
                      width: width,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            BoldText(
                                text:
                                    AppLocalizations.of(context)!.listenToYour),
                            BoldText(
                                text: AppLocalizations.of(context)!
                                    .favouritePodcast),
                            const SizedBox(
                              height: 16,
                            ),
                            const NormalText(),
                            const SizedBox(
                              height: 50,
                            ),
                            const SignIn(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SignUp(),
            ],
          );
        }),
      ),
    );
  }
}
