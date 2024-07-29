import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gakkai_202407/components/my_page_card.dart';

class UseRaw5Slide extends FlutterDeckSlideWidget {
  UseRaw5Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/2_use_raw_5_slide',
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
              'After',
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Flexible(
                                child: SingleChildScrollView(
                                  child: FlutterDeckCodeHighlight(
                                    fileName: 'my_page_card.dart',
                                    code:
                                        'class MyPageCard extends StatelessWidget {'
                                        '\n  const MyPageCard._raw({'
                                        '\n    super.key,'
                                        '\n    required this.title,'
                                        '\n    required this.leading,'
                                        '\n    this.child,'
                                        '\n  });'
                                        '\n'
                                        '\n  const MyPageCard.profile({'
                                        '\n    super.key,'
                                        '\n    required String name,'
                                        '\n    required int age,'
                                        '\n  }) : this._raw('
                                        '\n     leading: const Icon(Icons.person),'
                                        '\n     title: Text(\'プロフィール\'),'
                                        '\n     child: Column('
                                        '\n       crossAxisAlignment: CrossAxisAlignment.start,'
                                        '\n       children: ['
                                        '\n         Text(\'名前：\$name\'),'
                                        '\n         Text(\'年齢：\$age\'),'
                                        '\n        ],'
                                        '\n      ),'
                                        '\n'
                                        '\n  const MyPageCard.settings({'
                                        '\n    super.key,'
                                        '\n  }) : this._raw('
                                        '\n     leading: const Icon(Icons.settings),'
                                        '\n     title: const Text(\'設定\'),'
                                        '\n    )'
                                        '\n'
                                        '\n  final Widget title;'
                                        '\n  final Widget leading;'
                                        '\n  final Widget? child;'
                                        '\n}'
                                        '\n',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 32),
                              Column(
                                children: [
                                  const FlutterDeckCodeHighlight(
                                    fileName: 'my_page.dart',
                                    code:
                                        'class MyPage extends StatelessWidget {'
                                        '\n  const MyPage({super.key});'
                                        '\n'
                                        '\n  @override'
                                        '\n  Widget build(BuildContext context) {'
                                        '\n    return Scaffold('
                                        '\n      body: Column('
                                        '\n        children: ['
                                        '\n          MyPageCard.profile('
                                        '\n            name: name,'
                                        '\n            age: age'
                                        '\n          ),'
                                        '\n          MyPageCard.settings(),'
                                        '\n        ],'
                                        '\n      ),'
                                        '\n    );'
                                        '\n  }'
                                        '\n}',
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    '→ 「何が並んでいるか」\nに集中できる',
                                    style: textTheme.headlineLarge!.copyWith(
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          themeData.colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
