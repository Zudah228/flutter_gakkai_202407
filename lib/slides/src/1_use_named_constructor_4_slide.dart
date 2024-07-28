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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 64),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Before',
                        style: textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 16),
                      const FlutterDeckCodeHighlight(
                        code: 'enum MyBannerStyle {'
                            '\n  info,'
                            '\n  warning,'
                            '\n  error,'
                            '\n}'
                            '\n'
                            '\nclass MyBanner extends StatelessWidget {'
                            '\n  const MyBanner({'
                            '\n    super.key,'
                            '\n    required this.style,'
                            '\n  });'
                            '\n'
                            '\n  final MyBannerStyle style;'
                            '\n}',
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'After',
                        style: textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 16),
                      const FlutterDeckCodeHighlight(
                        code: 'enum _MyBannerVariant {'
                            '\n  info,'
                            '\n  warning,'
                            '\n  error,'
                            '\n}'
                            '\n'
                            '\nclass MyBanner extends StatelessWidget {'
                            '\n  const MyBanner({'
                            '\n    super.key,'
                            '\n  }) : _variant = _MyBannerVariant.info;'
                            '\n'
                            '\n  const MyBanner.warning({'
                            '\n    super.key,'
                            '\n  }) : _variant = _MyBannerVariant.warning;'
                            '\n'
                            '\n  const MyBanner.error({'
                            '\n    super.key,'
                            '\n  }) : _variant = _MyBannerVariant.error;'
                            '\n'
                            '\n  final MyBannerVariant _variant;'
                            '\n}',
                      ),
                    ],
                  ),
                ],
              )
            ],
          );
        });
      },
    );
  }
}
