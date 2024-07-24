import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class IntroductionSlide extends FlutterDeckSlideWidget {
  IntroductionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/0_introduction_slide',
            title: 'イントロ',
            header: FlutterDeckHeaderConfiguration(
              title: 'なぜパクるのか',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return FlutterDeckBulletList(
          items: const [
            '設計の迷いがなくなる',
            '新しいアイデアを得られる',
            '内部実装に詳しくなる',
          ],
        );
      },
    );
  }
}
