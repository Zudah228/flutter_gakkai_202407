import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gakkai_202407/components/rich_flutter_deck_bullet_list.dart';

class UseChildArgumentSlide3 extends FlutterDeckSlideWidget {
  UseChildArgumentSlide3()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/3_use_child_argument_slide_3',
              title: 'String ではなく、Widget で',
              header: FlutterDeckHeaderConfiguration(
                title: 'String ではなく、Widget で定義するメリット',
              ),
              steps: 2),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return FlutterDeckSlideStepsBuilder(
          builder: (context, step) {
            return Column(
              children: [
                Flexible(
                  child: RichFlutterDeckBulletList(
                    items: [
                      const TextSpan(text: 'アイコン設置など・ウィジェットの自由が効く'),
                      TextSpan(
                        text: 'コンストラクタで BuildContext が使える',
                        style: step >= 2
                            ? TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Theme.of(context).colorScheme.primary,
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
