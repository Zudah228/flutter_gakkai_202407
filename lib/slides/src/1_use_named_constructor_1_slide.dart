import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseNamedConstructor1Slide extends FlutterDeckSlideWidget {
  UseNamedConstructor1Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1_use_named_constructor_1_slide',
            title: 'Enum を公開せず、名前付きコンストラクタで',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Enum を公開せず、名前付きコンストラクタを使う',
    );
  }
}
