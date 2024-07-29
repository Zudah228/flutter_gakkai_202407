import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseNamedConstructor5Slide extends FlutterDeckSlideWidget {
  UseNamedConstructor5Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1_use_named_constructor_5_slide',
            title: 'Enum を公開せず、名前付きコンストラクタで',
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
