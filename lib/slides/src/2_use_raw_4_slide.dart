import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gakkai_202407/components/my_page_card.dart';

class UseRaw4Slide extends FlutterDeckSlideWidget {
  UseRaw4Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/2_use_raw_4_slide',
            title: 'Raw~ ウィジェット、コンストラクタ考えの活用',
            header: FlutterDeckHeaderConfiguration(
              title: 'Raw クラスに分けるメリット',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Before',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyPageCard.profile(
                        name: '津田大和',
                        age: 27,
                      ),
                      const MyPageCard.settings(),
                    ],
                  ),
                  const SizedBox(width: 64),
                  const Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              '\n  final Widget title;'
                              '\n  final Widget leading;'
                              '\n  final Widget? child;'
                              '\n}',
                        ),
                        SizedBox(width: 32),
                        Flexible(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                FlutterDeckCodeHighlight(
                                  fileName: 'my_page.dart',
                                  code: 'class MyPage extends StatelessWidget {'
                                      '\n  const MyPage({super.key});'
                                      '\n'
                                      '\n  @override'
                                      '\n  Widget build(BuildContext context) {'
                                      '\n    return Scaffold('
                                      '\n      body: Column('
                                      '\n        children: ['
                                      '\n          MyPageCard('
                                      '\n            title: Text(\'プロフィール\'),'
                                      '\n            child: Column('
                                      '\n              crossAxisAlignment: CrossAxisAlignment.start,'
                                      '\n              children: ['
                                      '\n                Text(\'名前：\$name\'),'
                                      '\n                Text(\'年齢：\$age\'),'
                                      '\n              ],'
                                      '\n            ),'
                                      '\n          ),'
                                      '\n          MyPageCard('
                                      '\n            title: Text(\'設定\'),'
                                      '\n          ),'
                                      '\n        ],'
                                      '\n      ),'
                                      '\n    );'
                                      '\n  }'
                                      '\n}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
