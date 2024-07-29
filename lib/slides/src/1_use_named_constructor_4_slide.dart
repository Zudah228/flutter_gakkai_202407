import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../components/rich_flutter_deck_bullet_list.dart';

class UseNamedConstructor4Slide extends FlutterDeckSlideWidget {
  UseNamedConstructor4Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1_use_named_constructor_4_slide',
            title: 'Enum を公開せず、名前付きコンストラクタで',
            steps: 2,
            header: FlutterDeckHeaderConfiguration(
              title: '名前付きコンストラクタのメリット',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return FlutterDeckSlideStepsBuilder(builder: (context, steps) {
          return Column(
            children: [
              Flexible(
                child: RichFlutterDeckBulletList(
                  items: [
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '呼び出す側の記述量が少ない',
                          style: steps >= 2
                              ? TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      themeData.colorScheme.primary,
                                )
                              : null,
                        ),
                        if (steps >= 2)
                          TextSpan(
                            text: ' ← 書くコストより、読む（使う）コストを減らすことを優先',
                            style: steps >= 2
                                ? TextStyle(
                                    color: themeData.colorScheme.primary,
                                  )
                                : null,
                          ),
                      ],
                    ),
                    const TextSpan(text: '「全部のパターンを見ないと…」という強制力が軽減される'),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 64),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Before',
                          style: textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 16),
                        const FlutterDeckCodeHighlight(
                          code: 'Card(variant: CardVariant.elevated)'
                              '\n'
                              '\nCard(variant: CardVariant.filled)'
                              '\n'
                              '\nCard(variant: CardVariant.outlined)',
                        ),
                      ],
                    ),
                    const SizedBox(width: 100),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'After',
                          style: textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 16),
                        const FlutterDeckCodeHighlight(
                          code: 'Card()'
                              '\n'
                              '\nCard.filled()'
                              '\n'
                              '\nCard.outlined()',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          );
        });
      },
    );
  }
}
