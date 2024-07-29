import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseNamedConstructor2Slide extends FlutterDeckSlideWidget {
  UseNamedConstructor2Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1_use_named_constructor_2_slide',
            title: 'Enum を公開せず、名前付きコンストラクタで',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'この Enum を見たことありますか？',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            const Center(
              child: FlutterDeckCodeHighlight(
                code: 'enum _CardVariant { elevated, filled, outlined }',
              ),
            ),
          ],
        );
      },
    );
  }
}
