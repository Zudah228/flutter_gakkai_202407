import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseRaw1Slide extends FlutterDeckSlideWidget {
  UseRaw1Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/2_use_raw_1_slide',
            title: 'Raw クラスを使う',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Raw~ ウィジェットの活用',
    );
  }
}
