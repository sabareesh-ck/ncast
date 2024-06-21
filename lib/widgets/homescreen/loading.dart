import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 60,
          width: 50,
          child: LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [Color(0xFF4C0099)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          width: 50,
          child: const LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [Color(0xFF4C0099)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          width: 50,
          child: const LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [Color(0xFF4C0099)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          width: 50,
          child: LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [const Color(0xFF1F1F1F).withOpacity(0.2)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          width: 50,
          child: LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [const Color(0xFF1F1F1F).withOpacity(0.2)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          width: 50,
          child: LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [const Color(0xFF1F1F1F).withOpacity(0.2)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          width: 50,
          child: LoadingIndicator(
              pause: true,
              strokeWidth: 10,
              colors: [const Color(0xFF1F1F1F).withOpacity(0.2)],
              indicatorType: Indicator.lineScalePulseOutRapid),
        )
      ],
    );
  }
}
