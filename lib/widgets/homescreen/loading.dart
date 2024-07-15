import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:ncast/bloc/player_bloc.dart';
import 'package:ncast/model/loading_color.dart';

class Loading extends StatefulWidget {
  const Loading({
    super.key,
    required this.duration,
  });
  final String duration;

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late var duration = (double.parse(widget.duration) / 35) * 60000000;

  bool drag = false;
  List<List<Color>> color = LoadingColor().defaultColor;
  bool pause = true;

  double dragIndex = 0.0;
  double width = 0.0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width / 7;
    return BlocConsumer<PlayerBloc, PlayerState>(
      listener: (context, state) async {
        drag = false;
        int i = 0;
        bool stop = false;
        if (state is PlayerPause) {
          stop = true;
        }
        if (state is PlayerPlay) {
          if (color[6][4] == const Color(0xFF4C0099)) {
            color = LoadingColor().defaultColor;
          }
          for (var k = i; k < 7; k++) {
            if (!stop) {
              for (var j = 0; j < 5; j++) {
                dragIndex = k.ceilToDouble();
                await Future.delayed(
                    Duration(
                      microseconds: duration.round(),
                    ), () {
                  color[k][j] = const Color(0xFF4C0099);
                });
              }
            } else {
              break;
            }
          }
          if (color[6][4] == const Color(0xFF4C0099)) {
            // ignore: use_build_context_synchronously
            context.read<PlayerBloc>().fullyPlayed();
          }
        }
      },
      builder: (context, state) {
        if (state is PlayerPause) {
          pause = true;
        }
        if (state is PlayerPlay) {
          pause = false;
        }

        return GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              drag = true;
              dragIndex += details.primaryDelta! / width;
              if (dragIndex < 0) {
                dragIndex = 0;
              } else if (dragIndex > 7) {
                dragIndex = 7;
              }
            });
          },
          child: Row(
            children: List.generate(7, (index) {
              if (drag) {
                if (index < dragIndex) {
                  color[index] = [
                    const Color(0xFF4C0099),
                    const Color(0xFF4C0099),
                    const Color(0xFF4C0099),
                    const Color(0xFF4C0099),
                    const Color(0xFF4C0099)
                  ];
                } else {
                  color[index] = [
                    const Color(0xFF1F1F1F).withOpacity(0.2),
                    const Color(0xFF1F1F1F).withOpacity(0.2),
                    const Color(0xFF1F1F1F).withOpacity(0.2),
                    const Color(0xFF1F1F1F).withOpacity(0.2),
                    const Color(0xFF1F1F1F).withOpacity(0.2)
                  ];
                }
              }

              return Container(
                margin: const EdgeInsets.only(left: 5),
                height: 60,
                width: 50,
                child: LoadingIndicator(
                    pause: pause,
                    strokeWidth: 10,
                    colors: color[index],
                    indicatorType: Indicator.lineScalePulseOutRapid),
              );
            }),
          ),
        );
      },
    );
  }
}
