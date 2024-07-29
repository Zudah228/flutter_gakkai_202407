import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SummarySlide extends FlutterDeckSlideWidget {
  SummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/5_summary_slide',
            title: 'まとめ',
            header: FlutterDeckHeaderConfiguration(
              title: 'まとめ',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: FlutterDeckBulletList(
                  items: const [
                    'Enum を公開せず、名前付きコンストラクタで',
                    'Raw~ ウィジェット、コンストラクタ考えの活用',
                    '引数は String ではなく、Widget で',
                    '内部で InheritedWidget を使う',
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
