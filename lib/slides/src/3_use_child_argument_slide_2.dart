import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseChildArgumentSlide2 extends FlutterDeckSlideWidget {
  UseChildArgumentSlide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/3_use_child_argument_slide_2',
            title: 'String ではなく、Widget で',
            header: FlutterDeckHeaderConfiguration(title: 'String と Widget 比較'),
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
              '多くの Flutter の ウィジェットでは、Widget が引数になっている',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlutterDeckCodeHighlight(
                  fileName: 'my_page_card.dart',
                  code: 'class MyPageCard extends StatelessWidget {'
                      '\n  const MyPageCard({'
                      '\n    super.key,'
                      '\n    required this.title,'
                      '\n    required this.leading,'
                      '\n    this.child,'
                      '\n  });'
                      '\n'
                      '\n  final String title;'
                      '\n  final Widget leading;'
                      '\n  final Widget? child;'
                      '\n}',
                ),
                FlutterDeckCodeHighlight(
                  fileName: 'my_page_card.dart',
                  code: 'class MyPageCard extends StatelessWidget {'
                      '\n  const MyPageCard({'
                      '\n    super.key,'
                      '\n    required this.title,'
                      '\n    required this.leading,'
                      '\n    this.child,'
                      '\n  });'
                      '\n'
                      '\n  final Widget title;'
                      '\n  final Widget leading;'
                      '\n  final Widget? child;'
                      '\n}',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
