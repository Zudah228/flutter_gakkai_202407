import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseChildArgumentSlide5 extends FlutterDeckSlideWidget {
  UseChildArgumentSlide5()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/3_use_child_argument_slide_5',
            title: 'String ではなく、Widget で',
            header: FlutterDeckHeaderConfiguration(
              title: 'TextStyle などの設定方法',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'InheritedWidget を活用する',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: const TextStyle(
                    fontSize: 32,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlutterDeckCodeHighlight(
                      code: 'DefaultTextStyle.merge('
                          '\n  style: textTheme.titleMedium,'
                          '\n  textAlign: TextAlign.center,'
                          '\n  child: title,'
                          '\n)',
                    ),
                    FlutterDeckCodeHighlight(
                      code: 'IconTheme.merge('
                          '\n  data: IconThemeData('
                          '\n    size: 20,'
                          '\n  ),'
                          '\n  child: leading,'
                          '\n)',
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
