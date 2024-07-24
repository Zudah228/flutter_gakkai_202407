import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseChildArgumentSlide1 extends FlutterDeckSlideWidget {
  UseChildArgumentSlide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/3_use_child_argument_slide_1',
            title: 'String ではなく、Widget で',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: '引数は String ではなく、Widget で',
    );
  }
}
