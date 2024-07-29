import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class EndSlide extends FlutterDeckSlideWidget {
  EndSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/6_end_slide',
            title: '最後',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: 'ご清聴ありがとうございました');
  }
}
