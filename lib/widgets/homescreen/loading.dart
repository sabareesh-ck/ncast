import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:ncast/bloc/player_bloc.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double _currentProgress = 0.0;
  double _indicatorWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    _indicatorWidth = MediaQuery.of(context).size.width / 7;
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        bool pause = true;
        if (state is PlayerPause) {
          pause = true;
        }
        if (state is PlayerPlay) {
          pause = false;
        }
        return GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              _currentProgress += details.primaryDelta! / _indicatorWidth;
              if (_currentProgress < 0) {
                _currentProgress = 0;
              } else if (_currentProgress > 7) {
                _currentProgress = 7;
              }
            });
          },
          child: Row(
            children: List.generate(7, (index) {
              Color color;
              if (index < _currentProgress) {
                color = const Color(0xFF4C0099);
              } else {
                color = const Color(0xFF1F1F1F).withOpacity(0.2);
              }
              return Container(
                margin: const EdgeInsets.only(left: 5),
                height: 60,
                width: 50,
                child: LoadingIndicator(
                    pause: pause,
                    strokeWidth: 10,
                    colors: [color],
                    indicatorType: Indicator.lineScalePulseOutRapid),
              );
            }),
          ),
        );
      },
    );
  }
}
