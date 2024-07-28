import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseNamedConstructor3Slide extends FlutterDeckSlideWidget {
  UseNamedConstructor3Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1_use_named_constructor_3_slide',
            title: 'Enum を公開せず、名前付きコンストラクタで',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter の Card ウィジェットで使われている Enum',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            const Center(
              child: FlutterDeckCodeHighlight(
                code: 'enum _CardVariant { elevated, filled, outlined }'
                    '\n'
                    '\nclass Card extends StatelessWidget {'
                    '\n  const Card({'
                    '\n    // ...'
                    '\n  }) : _variant = _CardVariant.elevated;'
                    '\n'
                    '\n  const Card.filled({'
                    '\n    // ...'
                    '\n  }) : _variant = _CardVariant.filled;'
                    '\n'
                    '\n  const Card.outlined({'
                    '\n    // ...'
                    '\n  }) : _variant = _CardVariant.outlined;'
                    '\n'
                    '\n'
                    '\n  final _CardVariant _variant;',
              ),
            ),
          ],
        );
      },
      rightBuilder: (context) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: SizedBox.square(
                dimension: 200,
                child: Center(child: Text('elevated')),
              ),
            ),
            Card.filled(
              child: SizedBox.square(
                dimension: 200,
                child: Center(child: Text('filled')),
              ),
            ),
            Card.outlined(
              child: SizedBox.square(
                dimension: 200,
                child: Center(child: Text('outlined')),
              ),
            ),
          ],
        );
      },
    );
  }
}
