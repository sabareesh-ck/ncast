import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ncast/model/category.dart';

class CategorySlide extends StatefulWidget {
  const CategorySlide({super.key});

  @override
  State<CategorySlide> createState() => _CategorySlideState();
}

class _CategorySlideState extends State<CategorySlide> {
  Color categoryColor = const Color(0xFFFF5757).withOpacity(0.1);
  int? selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 430,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, bottom: 5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: selected == index
                      ? const Color(0xFFFF5757)
                      : const Color(0xFFFF5757).withOpacity(0.1),
                ),
                width: 150,
                child: Text(
                  categories[index].name,
                  style: TextStyle(
                    color: selected == index
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF1F1F1F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
