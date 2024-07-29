import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Introduction2Slide extends FlutterDeckSlideWidget {
  Introduction2Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/0_introduction_slide_2',
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
        return Column(
          children: [
            Flexible(
              child: FlutterDeckBulletList(
                items: const [
                  '設計の迷いがなくなる',
                  '新しいアイデアを得られる',
                  '内部実装に詳しくなる',
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
