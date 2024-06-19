import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'images/appbar.svg',
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Image.asset(
                  width: 684,
                  height: 684,
                  'images/background.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  right: 80,
                  top: 260,
                  child: SvgPicture.asset('images/NCAST2.svg')),
              Positioned(
                top: 150,
                left: 100,
                child: SvgPicture.asset('images/NCAST1.svg'),
              ),
              Positioned(
                width: 318,
                height: 318,
                top: 120,
                left: 50,
                child: Image.asset(
                  'images/mic.png',
                ),
              ),
              Positioned(
                top: 450,
                left: 50,
                child: Column(
                  children: [
                    const Text(
                      'Listen to your ',
                      style: TextStyle(
                          color: Color(0xFF1F1F1F),
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const Text('favourite podcast',
                        style: TextStyle(
                            color: Color(0xFF1F1F1F),
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text('More than 1000+ best talks ever',
                        style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
                    const SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xFF4C0099))),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 80),
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Sign up',
              style: TextStyle(color: Color(0xFF4C0099)),
            ),
          )
        ],
      ),
    );
  }
}
