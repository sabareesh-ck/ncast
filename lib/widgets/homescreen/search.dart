import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    final searchcontroller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
      child: Container(
        height: 65,
        width: 400,
        decoration: BoxDecoration(
          color: const Color(0xFF1F1F1F).withOpacity(0.08),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(Assets.images.icon.search),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: TextField(
                  controller: searchcontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        'Search the podcast here...',
                        style: TextStyle(
                            color: const Color(0xFF1F1F1F).withOpacity(0.5),
                            fontSize: 16),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
