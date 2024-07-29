import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseInheritedWidgetSlide2 extends FlutterDeckSlideWidget {
  UseInheritedWidgetSlide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4_use_inherited_widget_slide_2',
            title: '内部で InheritedWidget を使う',
            header: FlutterDeckHeaderConfiguration(
              title: '内部で InheritedWidget を使う',
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
              '子ウィジェットから、祖先のウィジェットへアクセスする方法',
              style: textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            const Expanded(
              child: Center(
                child: FlutterDeckCodeHighlight(
                    code: 'Form('
                        '\n  child: Builder('
                        '\n    builder: (context) {'
                        '\n'
                        '\n      FilledButton('
                        '\n        onPressed: () {'
                        '\n          Form.of(context).validate();'
                        '\n        }'
                        '\n    }'
                        '\n  )'
                        '\n)'),
              ),
            )
          ],
        );
      },
    );
  }
}
